class Player < ActiveRecord::Base
    has_many :registrations
    has_many :matches, through: :registrations
    has_many :decks, through: :registrations
end
