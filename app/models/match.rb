# frozen_string_literal: true

class Match < ActiveRecord::Base
  belongs_to :winner, class_name: 'Registration'
  belongs_to :loser, class_name: 'Registration'
  belongs_to :tournament

  def all_matches
    Match.all
  end
end
