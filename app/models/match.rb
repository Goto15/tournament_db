class Match < ActiveRecord::Base
    belongs_to :registration
    belongs_to :tournament
end
