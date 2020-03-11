class TournamentsController < ApplicationController
    def index
        tournaments = {}

        Tournament.all.each do |t|
            tournaments[t.id] = {
                name: t.name,
                date: t.format_date,
                format: t.format
            }
        end

        render json: tournaments
    end

    def show
        tourney = Tournament.find(params[:id])

        tourney_info = {
            name: tourney.name,
            date: tourney.format_date,
            format: tourney.format,
            rounds: tourney.number_of_rounds,
            winner: tourney.winner,
            players: tourney.players
        }

        render json: tourney_info
    end

end
