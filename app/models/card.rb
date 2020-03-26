# frozen_string_literal: true

# Card is currently unused however in the future I hope
# that each card will be be able to have usage, frequency, 
# and possibly Elo ratings and win%. I think that exposing
# this information would be a great way to allow players
# to attack metas and determine card power. 

class Card < ActiveRecord::Base
  has_many :cardlists
end
