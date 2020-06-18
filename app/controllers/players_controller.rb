# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    player_cache = Rails.cache.read('players_data')

    if(player_cache == nil)
      all_players = Player.all
      player_tournaments = Tournament.all
      player_array = []

      all_players.each do |player|
        # top_8s = 0

        # player_tournaments.select do |tournament|
        #   if tournament.top_8.include?(player.ign)
        #     top_8s += 1
        #   end
        # end

        player_array <<
          {
            id: player.id,
            ign: player.ign,
            elo: player.elo,
            win_percentage: player.win_percentage,
            match_count: player.wins + player.losses,
            wins: player.wins,
            losses: player.losses,
            num_tournaments: player.registrations.count,
            tournament_wins: player.tournament_wins,
            top_8s: player.top_8s
          }
      end

      Rails.cache.write('players_data', player_array, expires_in: 1.minute)

      render json: player_array
    else
      players_array = Rails.cache.read('players_data')
      render json: players_array
    end
  end

  def show
    player = Player.find(params[:id])
    player_tournaments = player.all_tournaments

    matches = {}
    player_tournaments.map do |tournament|
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
      elo: player.elo,
      win_percentage: player.win_percentage,
      num_tournaments: player_tournaments.count,
      matches: matches
    }

    render json: player_info
  end

  def matches
    player = Player.find(params[:id])

    matches = {
      player: player.ign,
      matches: player.all_matches.map do |m|
        {
          id: m.id,
          tournament: m.tournament.name,
          won: m.winner.player.ign == player.ign,
          opponent: player.get_opponent(m),
          round: m.round
        }
      end
    }

    render json: matches
  end

  def tournaments
    render json: Player.find(params[:id]).all_tournaments
  end
end
