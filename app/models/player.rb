# frozen_string_literal: true

# The Player class is responsible for exposing player specific
# information such as win%, all tournaments that they've played
# in, etc. This allows for the exposure of player information
# that be compared against others. 

class Player < ActiveRecord::Base
  # Relationships
  has_many :registrations
  has_many :matches, through: :registrations
  has_many :decks, through: :registrations

  # Validations
  validates :ign, uniqueness: true
  validates :wins, numericality: {greater_than_or_equal_to: 0}
  validates :losses, numericality: {greater_than_or_equal_to: 0}
  validates :win_percentage, numericality: {greater_than_or_equal_to: 0}

  def add_loss
    self.losses += 1
    self.save
  end

  def add_win
    self.wins += 1
    self.save
  end

  def all_losses
    self.registrations.map do |reg|
      Match.where(loser: reg).map do |match|
        match
      end
    end.flatten
  end

  def all_matches
    self.all_tournaments.map do |tourney|
      tourney.matches.map do |match|
        if(self.ign == match.winner_ign || self.ign == match.loser_ign)
          match
        end
      end
    end.flatten.compact
  end

  def all_tournaments
    Tournament.all.map do |tourney|
      if (tourney.players.include?(self.ign))
        tourney
      end
    end.compact
  end

  def all_wins
    self.registrations.map do |reg|
      Match.where(winner: reg).map do |match|
        match
      end
    end.flatten
  end

  def calculate_win_percentage
    self.win_percentage = ((self.wins.to_f / (self.wins + self.losses)) * 100).round(2)
    self.save
  end

  def get_opponent(match)
    self == match.winner.player ? match.loser.player : match.winner.player
  end
end
