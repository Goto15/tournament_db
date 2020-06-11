# frozen_string_literal: true

# The Match class does not have enough data right now to 
# expose more interesting data other than who won and who
# lost. However farther along WWG might expose more
# information making this class more interesting. 

class Match < ActiveRecord::Base
  # Relations
  belongs_to :winner, class_name: 'Registration'
  belongs_to :loser, class_name: 'Registration'
  belongs_to :tournament

  # Calculated fields
  before_save :update_player_record

  def all_matches
    Match.all
  end

  def winner_ign
    self.winner.player.ign 
  end

  def loser_ign
    self.loser.player.ign 
  end

  def match_data
    {
      tournament: self.tournament.name,
      round: self.round,
      winner: self.winner_ign,
      loser: self.loser_ign,
      elo_delta: self.elo_delta
    }
  end

  def update_player_record
    # Find the winner and the loser and update their records accordingly
    # Ben Sullivan Jun 11 2020
    winner = Player.find(self.winner.player.id)
    loser = Player.find(self.loser.player.id)

    winner.wins += 1
    loser.losses += 1

    winner.save
    loser.save
  end
end
