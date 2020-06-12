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

  # TODO: break out into two methods. Currently does two things
  def update_player_record
    Player.find(self.winner.player.id).add_win
    Player.find(self.loser.player.id).add_loss

    Player.find(self.winner.player.id).calculate_win_percentage
    Player.find(self.loser.player.id).calculate_win_percentage
  end
end
