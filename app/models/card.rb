# frozen_string_literal: true

class Card < ActiveRecord::Base
  has_many :cardlists
end
