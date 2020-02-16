class Cardlist < ApplicationRecord
    belongs_to :card 
    belongs_to :deck
end
