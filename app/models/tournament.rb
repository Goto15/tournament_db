class Tournament < ActiveRecord::Base
    has_many :matches
    has_many :registrations, through: :matches
    has_many :players, through: :registrations

    def format_date
        self.date.strftime("%Y-%m-%d")
    end

    def number_of_rounds
        max_round = 0
        self.matches.each do |match|
            if ((match.round != 'finals') || (match.round != 'semifinals') || (match.round != 'quarterfinals'))
                if match.round.to_i > max_round
                    max_round = match.round.to_i
                end
            end
        end
        max_round
    end

    def players
        players = []
        self.matches.map do |match|
            players << match.winner.player.ign
            players << match.loser.player.ign
        end
        players.compact.uniq
    end

    def top_8
        players = []
        self.matches.map do |match|
            if (match.round == 'finals' || match.round == 'semifinals' || match.round == 'quarterfinals')
                players << match.winner.player.ign
                players << match.loser.player.ign
            end
        end
        players.compact.uniq
    end

    def winner
        if self.matches.find_by(round: 'finals')
            self.matches.find_by(round: 'finals').winner.player.ign
        else 
            "No Finals"
        end
    end
end
