# frozen_string_literal: true

# The Player class is responsible for exposing player specific
# information such as win%, all tournaments that they've played
# in, etc. This allows for the exposure of player information
# that be compared against others. 

class Player < ActiveRecord::Base
  has_many :registrations
  has_many :matches, through: :registrations
  has_many :decks, through: :registrations

  def all_losses
    self.registrations.map do |reg|
      Match.where(loser: reg).map do |match|
        match
      end
    end.flatten
  end

  def all_matches
    (self.all_wins + self.all_losses).map do |match|
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

  def get_opponent(match)
    winner_ign = match.winner_ign
    loser_ign = match.loser_ign

    self.ign == winner_ign ? loser_ign : winner_ign
  end

  def win_percentage
    ((self.all_wins.count / self.all_matches.count.to_f) * 100).round(2)
  end
end
