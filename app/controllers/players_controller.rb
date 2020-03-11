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
end
