# frozen_string_literal: true

class MatchesController < ApplicationController
  def show
    match = Match.find(params[:id])

    match_info =
      {
        tournament: match.tournament.name,
        round: match.round,
        winner: match.winner.player.ign,
        loser: match.loser.player.ign,
        elo_delta: match.elo_delta
      }

    render json: match_info
  end

  def index
    matches = {}

    Match.all.each do |match|
      matches[match.id] =
        {
          tournament: match.tournament.name,
          round: match.round,
          winner: match.winner.player.ign,
          loser: match.loser.player.ign
        }
    end

    render json: matches
  end
end
