class Match < ApplicationRecord
    belongs_to :registration
    belongs_to :tournament
end
