# frozen_string_literal: true

# The Match class does not have enough data right now to 
# expose more interesting data other than who won and who
# lost. However farther along WWG might expose more
# information making this class more interesting. 

class Match < ActiveRecord::Base
  belongs_to :winner, class_name: 'Registration'
  belongs_to :loser, class_name: 'Registration'
  belongs_to :tournament

  def all_matches
    Match.all
  end

  def winner_ign
    self.winner.player.ign 
  end

  def loser_ign
    self.loser.player.ign 
  end
end
