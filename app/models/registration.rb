class Registration < ApplicationRecord
    belongs_to :player
    belongs_to :deck
    has_many :matches
end
