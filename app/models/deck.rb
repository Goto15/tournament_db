# frozen_string_literal: true

# Deck is currently unused. However in the future it will be 
# used to expose decklists for constructed tournaments allowing
# for the display and measuring of card usage, frequency, and 
# hopefully win rate. 

class Deck < ActiveRecord::Base
  has_many :cardlists
  has_many :registrations
end
