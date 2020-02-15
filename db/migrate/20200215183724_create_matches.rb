class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :winner
      t.integer :loser
      t.integer :tournament_id
      t.string :round
      t.integet :num_games
    end
  end
end
