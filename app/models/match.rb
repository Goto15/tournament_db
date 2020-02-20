class Match < ActiveRecord::Base
    # Check the order of these statements
    belongs_to :winner, :class_name => "Registration"
    belongs_to :loser, :class_name => "Registration"
    # belongs_to :registration
    belongs_to :tournament
end
