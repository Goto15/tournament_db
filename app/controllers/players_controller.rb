class PlayersController < ApplicationController
  def index
    player_array = []

    Player.all.each do |player|
      player_array << 
      {
        id: player.id,
        ign: player.ign,
        elo: player.elo,
        win_percentage: player.win_percentage,
        match_count: player.all_matches.count,
        wins: player.all_wins.count,
        losses: player.all_losses.count,
        num_tournaments: player.all_tournaments.count,
        tournament_wins: Tournament.all.select{ |tournament| tournament.winner == player.ign }.count,
        top_8s: Tournament.all.select do |tournament| 
                  tournament.top_8.include?(player.ign)
                end.count
      }
    end

    render json: player_array
  end
  
  def show
    player = Player.find(params[:id])

    matches = {}

    player.all_tournaments.each do |tournament|
      matches[tournament.name] = 
        player.all_matches.map do |match|
          {
            round:  match.round,
            opponent: player.get_opponent(match),
            result: (match.winner.player.ign == player.ign) ? 'won' : 'lost',
            elo_delta: match.elo_delta
          }
        end
    end

    player_info = {
      player: player.ign,
      elo: player.elo,
      win_percentage: player.win_percentage,
      match_count: player.all_matches.count,
      num_tournaments: player.all_tournaments.count,
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
    player = Player.find(params[:id])

    render json: player.all_tournaments
  end
end
