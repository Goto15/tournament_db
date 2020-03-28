# frozen_string_literal: true

class TournamentsController < ApplicationController
  def index
    tournaments = {}

    Tournament.all.each do |tournament|
      tournaments[tournament.id] = tournament.index_data
    end

    render json: tournaments
  end

  def show
    render json: Tournament.find(params[:id]).show_data
  end

  def players
    render json: Tournament.find(params[:id]).players
  end

  def matches
    render json: Tournament.find(params[:id]).matches_data
  end
end
