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
  before_create :update_player_record
  before_create :is_winner
  before_create :made_top_8

  # Top X rounds
  $NON_SWISS_ROUNDS = %w[quarterfinals semifinals finals]

  def all_matches
    Match.all
  end

  def is_winner
    if self.round == 'finals'
      self.winner.player.add_tournament_win
    end
  end

  def made_top_8
    cut_round = self.tournament.matches.where(round: $NON_SWISS_ROUNDS).pluck(:round)
    if self.round == 'quarterfinals'
      self.players.each{ |p| p.add_top_8 }
    elsif self.round == 'semifinals' && !cut_round.include?('quarterfinals')
      self.players.each{ |p| p.add_top_8 }
    elsif self.round == 'finals' && !cut_round.include?('semifinals')
      self.players.each{ |p| p.add_top_8 }
    end
  end

  def players
    [self.winner.player, self.loser.player]
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

  # TODO: This should be broken out soon it is doing waaaaay too much
  # Right now Tournaments are reported in order, but this doesn't do order 
  # checking. That will need to be done in the future.
  def update_player_record
    winner = self.winner.player
    loser = self.loser.player

    Player.find(winner.id).add_win
    Player.find(loser.id).add_loss

    EloRating.k_factor = 36
    elo_match = EloRating::Match.new
    elo_match.add_player(rating: winner.elo, winner: true)
    elo_match.add_player(rating: loser.elo)

    self.elo_delta = loser.elo - elo_match.updated_ratings[1]

    winner.update_elo(elo_match.updated_ratings[0])
    loser.update_elo(elo_match.updated_ratings[1])

    Player.find(winner.id).calculate_win_percentage
    Player.find(loser.id).calculate_win_percentage
  end
end
