# frozen_string_literal: true

# Match Controller renders match data for API consumption

class MatchesController < ApplicationController
  def show
    render json: Match.find(params[:id]).match_data
  end

  def index
    matches = {}

    Match.all.each do |match|
      matches[match.id] = match.match_data
    end

    render json: matches
  end
end
