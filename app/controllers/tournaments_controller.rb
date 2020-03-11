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

    def players
      playerlist = Tournament.find(params[:id]).players

      render json: playerlist
    end

    def matches
      tournament = Tournament.find(params[:id])
      allmatches = tournament.matches
      
      matches = {
        tournament: tournament.name,
        format: tournament.format,
        date: tournament.format_date,
        matches: []
      }

      allmatches.each do |m|
        matches[:matches] << {
          winner: m.winner.player.ign,
          loser: m.loser.player.ign,
          round: m.round
        }
      end

      render json: matches
    end
end
