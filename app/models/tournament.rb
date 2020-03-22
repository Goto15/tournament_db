# frozen_string_literal: true

class Tournament < ActiveRecord::Base
  has_many :matches
  has_many :registrations, through: :matches
  has_many :players, through: :registrations

  $NON_SWISS_ROUNDS = %w[quarterfinals semifinals finals]

  def format_date
    date.strftime('%Y-%m-%d')
  end

  def number_of_rounds
    max_round = 0
    matches.each do |match|
      max_round = match.round.to_i if match.round.to_i > max_round
    end
    max_round
  end

  # TODO: Just look at round 1 and 2 for players
  def players
    players = []
    matches.map do |m|
      players << m.winner.player.ign
      players << m.loser.player.ign
    end
    players.compact.uniq
  end

  def top_8
    players = []
    matches.map do |m|
      if $NON_SWISS_ROUNDS.include?(m.round)
        players << m.winner.player.ign
        players << m.loser.player.ign
      end
    end
    players.compact.uniq
  end

  def winner
    if matches.find_by(round: 'finals')
      matches.find_by(round: 'finals').winner.player.ign
    else
      'No Finals'
    end
  end
end
