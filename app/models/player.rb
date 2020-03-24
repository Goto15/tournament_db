# frozen_string_literal: true

class Player < ActiveRecord::Base
  has_many :registrations
  has_many :matches, through: :registrations
  has_many :decks, through: :registrations

  def all_losses
    registrations.map do |reg|
      Match.where(loser: reg).map do |match|
        match
      end
    end.flatten
  end

  def all_matches
    (all_wins + all_losses).map do |match|
      match
    end
  end

  def all_tournaments
    all_matches.map(&:tournament).uniq
  end

  def all_wins
    registrations.map do |reg|
      Match.where(winner: reg).map do |match|
        match
      end
    end.flatten
  end

  def get_opponent(match)
    if ign == match.winner.player.ign
      match.loser.player.ign
    else
      match.winner.player.ign
    end
  end

  def win_percentage
    ((all_wins.count / all_matches.count.to_f) * 100).round(2)
  end
end
