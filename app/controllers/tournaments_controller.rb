# frozen_string_literal: true

class TournamentsController < ApplicationController
  def index
    tournaments = {}

    Tournament.all.each do |tournament|
      tournaments[tournament.id] =
        {
          name: tournament.name,
          date: tournament.format_date,
          format: tournament.format
        }
    end

    render json: tournaments
  end

  def show
    tourney = Tournament.find(params[:id])

    tourney_info =
      {
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

    matches =
      {
        tournament: tournament.name,
        format: tournament.format,
        date: tournament.format_date,
        matches: []
      }

    allmatches.each do |match|
      matches[:matches] << {
        winner: match.winner.player.ign,
        loser: match.loser.player.ign,
        round: match.round
      }
    end

    render json: matches
  end
end
