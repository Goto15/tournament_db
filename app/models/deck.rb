class Deck < ApplicationRecord
    has_many :cardlists
    has_many :registrations
end
