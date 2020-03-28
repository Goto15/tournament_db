# frozen_string_literal: true

# The Tournament class is responsible for exposing specific information 
# about a specific tournament such as the top 8, winner, number of 
# rounds, etc for the February (can be any Monthly) Tournament. This allows 
# for the exposure of interesting data that users might want to know 
# for personal improvement and/or comparison of themselves against other 
# competitive players. 

class Tournament < ActiveRecord::Base
  has_many :matches
  has_many :registrations, through: :matches
  has_many :players, through: :registrations

  # For now only top 2, 4, 8 rounds are broken out here. This could
  # be useful in the future for things such as top 8 win% and breaking
  # out non-standard rounds. Could possibly be and ENUM
  $NON_SWISS_ROUNDS = %w[quarterfinals semifinals finals]

  def format_date
    self.date.strftime('%Y-%m-%d')
  end

  def number_of_rounds
    self.matches.max_by{ |match| match.round.to_i }.round
  end

  def players
    self.matches.map do |match|
      [match.winner_ign, match.loser_ign]
    end.flatten.compact.uniq
  end

  # TODO: Reek is throwing a lot of code smells here, but refactoring
  # would lessen the readability to me with my current skills (3/24/2020) 
  def top_8
    self.matches.map do |match|
      if $NON_SWISS_ROUNDS.include?(match.round)
        [match.winner_ign, match.loser_ign]
      end
    end.flatten.compact.uniq
  end

  def winner
    # find_by returns a falsy value if there is no 'finals' round
    # for tournament. So in the case of something like the 'Kong 
    # Stress Tournament' there is no winner and therefore 'No finals.'
    
    # As a readability note: I usually keep away from ternary
    # operators. However I noticed that they were hard to read to my
    # eye. So I've started writing them, when I can, to improve my own
    # reading and writing comprehension.
    winner = matches.find_by(round: 'finals').winner_ign
    winner ? winner : 'No finals'
  end

  def index_data
    {
      name: self.name,
      format: self.format,
      date: self.format_date
    }
  end

  def matches_data
    {
      tournament: self.name,
      format: self.format,
      date: self.format_date,
      matches: self.matches.map do |match|        
                  {
                    winner: match.winner_ign,
                    loser: match.loser_ign,
                    round: match.round
                  }
                end
    }
  end

  def show_data
    {
      name: self.name,
      format: self.format,
      date: self.format_date,
      rounds: self.number_of_rounds,
      winner: self.winner,
      players: self.players
    }
  end
end
