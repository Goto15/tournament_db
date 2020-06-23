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

  # The add_thing methods should be generalized to cut down on code repitition
  def add_loss
    self.update(losses: self.losses += 1)
  end

  def add_participation
    self.update(num_tournaments: self.num_tournaments += 1)
  end

  def add_win
    self.update(wins: self.wins += 1)
  end

  def add_top_8
    self.update(top_8s: self.top_8s += 1)
  end

  def add_tournament_win
    self.update(tournament_wins: self.tournament_wins += 1)
  end

  def all_losses
    Match.where(loser: self.registrations)
  end

  def all_matches
    registrations = self.registrations
    Match.where(winner: registrations).or(Match.where(loser: registrations))
  end

  def all_tournaments
    Tournament.all.select{|t| t.players.include?(self)}.compact
  end

  def all_wins
      Match.where(winner: self.registrations)
  end

  def calculate_win_percentage
    self.update(win_percentage: (self.wins.to_f / (self.wins + self.losses) * 100).round(2))
  end

  def get_opponent(match)
    winner = match.winner_ign
    self.ign == winner ? match.loser_ign : winner
  end

  def max_elo_check(new_rating)
    if new_rating > self.max_elo
      self.update(max_elo: new_rating)
    end
  end

  def max_constructed_elo_check(new_rating)
    if new_rating > self.max_constructed_elo
      self.update(max_constructed_elo: new_rating)
    end
  end

  def max_dark_draft_elo_check(new_rating)
    if new_rating > self.max_dark_draft_elo
      self.update(max_dark_draft_elo: new_rating)
    end
  end

  def tournament_matches(tournament)
    registrations = self.registrations
    tournament.matches.where(winner_id: registrations).or(tournament.matches.where(loser_id: registrations))
  end

  def update_elo(new_elo)
    self.update(elo: new_elo)
  end

  def update_dark_draft_elo(new_elo)
    self.update(dark_draft_elo: new_elo)
  end

  def update_constructed_elo(new_elo)
    self.update(constructed_elo: new_elo)
  end
end
