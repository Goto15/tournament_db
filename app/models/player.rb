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

  # Needs to be rewritten since wins and losses are ints
  def all_matches
    (self.wins + self.losses).map do |match|
      match
    end
  end

  def all_tournaments
    self.all_matches.map(&:tournament).uniq
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
    winner_ign = match.winner_ign
    loser_ign = match.loser_ign

    self.ign == winner_ign ? loser_ign : winner_ign
  end
end
