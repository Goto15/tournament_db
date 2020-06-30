# frozen_string_literal: true

class TournamentsController < ApplicationController
  def index
    render json: Tournament.all
  end

  def show
    render json: Tournament.find(params[:id]).show_data
  end

  def players
    render json: Tournament.find(params[:id]).players
  end

  def matches
    render json: Tournament.find(params[:id]).matches
  end
end
