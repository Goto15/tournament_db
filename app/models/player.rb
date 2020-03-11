class Player < ActiveRecord::Base
    has_many :registrations
    has_many :matches, through: :registrations
    has_many :decks, through: :registrations

    def all_losses
        self.registrations.map do |reg|
            if Match.find_by(loser: reg)
                Match.find_by(loser: reg)
            end
        end.compact
    end

    def all_matches
        (self.all_wins + self.all_losses).sort_by do |match|
            match.tournament_id
        end
    end

    def all_tournaments
        self.all_matches.map do |m|
          m.tournament.name
        end.uniq
    end

    def all_wins
        self.registrations.map do |reg|
            if Match.find_by(winner: reg)
                Match.find_by(winner: reg)
            end
        end.compact
    end

    def get_opponent(match)
      if self.ign == match.winner.player.ign
        match.loser.player.ign
      else
        match.winner.player.ign
      end
    end

    def win_percentage
        ((self.all_wins.count / self.all_matches.count.to_f)*100).round(2)
    end

end
