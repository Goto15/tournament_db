class Deck < ActiveRecord::Base
    has_many :cardlists
    has_many :registrations
end
