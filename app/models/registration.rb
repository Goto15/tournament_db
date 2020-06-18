# frozen_string_literal: true

# Registrations are the join table between players, decks
# and matches. It's here so that players can register for
# matches with a deck.
class Registration < ActiveRecord::Base
  belongs_to :player
  belongs_to :deck
  has_many :matches

  # Calculated Fields
  before_save :add_player_participation

  def add_player_participation
    self.player.add_participation
  end
end
