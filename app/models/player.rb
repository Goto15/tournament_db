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
  validates :ign, uniqueness: true, presence: true
  validates :wins, numericality: { greater_than_or_equal_to: 0 }
  validates :losses, numericality: { greater_than_or_equal_to: 0 }
  validates :win_percentage, numericality: { greater_than_or_equal_to: 0 }

  def add_loss
    self.losses += 1
    self.save
  end

  def add_win
    self.wins += 1
    self.save
  end

  def all_losses
    Match.where(loser: self.registrations)
  end

  def all_matches
    Match.where(winner: self.registrations).or(Match.where(loser: self.registrations))
  end

  def all_tournaments
    Tournament.all.map do |tourney|
      if tourney.players.include?(self)
        tourney
      end
    end.compact
  end

  def all_wins
      Match.where(winner: self.registrations)
  end

  def calculate_win_percentage
    self.win_percentage = ((self.wins.to_f / (self.wins + self.losses)) * 100).round(2)
    self.save
  end

  def get_opponent(match)
    winner = match.winner_ign
    self.ign == winner ? match.loser_ign : winner
  end

  def tournament_matches(tournament)
    tournament.matches.where(winner_id: self.registrations).or(tournament.matches.where(loser_id: self.registrations))
  end

  def update_elo(new_elo)
    self.elo = new_elo
    self.save
  end
end
