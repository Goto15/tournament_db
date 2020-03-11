class PlayersController < ApplicationController
  def index
    players = {}

    Player.all.each do |p|
      players[p.id] = p.ign
    end

    render json: players
  end
  
  def show
    player = Player.find(params[:id])

    player_info = {
      player: player.ign,
      elo: player.elo,
      win_percentage: player.win_percentage
    }

    render json: player_info
  end

  def all_matches
    player = Player.find(params[:id])

    matches = {
      player: player.ign,
      matches: player.all_matches.map do |m|
        {
          tournament: m.tournament.name,
          won: m.winner.player.ign == player.ign,
          opponent: player.get_opponent(m),
          round: m.round
        }
      end
    }

    render json: matches
  end

  def all_tournaments
    player = Player.find(params[:id])
    
    render json: player.all_tournaments
  end
end
