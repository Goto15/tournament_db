# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    player_cache = Rails.cache.read('players_data')
    if(player_cache == nil)
      players_array = Player.all
      Rails.cache.write('players_data', players_array, expires_in: 1.minute)
      render json: players_array
    else
      players_array = Rails.cache.read('players_data')
      render json: players_array
    end
  end

  def show
    render json: Player.find(params[:id])
  end

  def matches
    player = Player.find(params[:id])

    matches = {}
    player.all_tournaments.map do |tournament|
      matches[tournament.name] =
        player.tournament_matches(tournament).map do |match|
            {
              round: match.round,
              opponent: player.get_opponent(match),
              result: match.winner.player == player ? 'won' : 'lost',
              elo_delta: match.elo_delta
            }
        end
    end

    player_info = {
      player: player.ign,
      matches: matches
    }

    render json: player_info
  end

  def tournaments
    render json: Player.find(params[:id]).all_tournaments
  end
end
