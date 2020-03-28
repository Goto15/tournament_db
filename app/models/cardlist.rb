# frozen_string_literal: true

# Cardlist is the join table between a deck and a card

class Cardlist < ActiveRecord::Base
  belongs_to :card
  belongs_to :deck
end
