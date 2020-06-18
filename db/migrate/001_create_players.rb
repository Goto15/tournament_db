class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :ign
      t.float :elo, default: 1600
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.float :win_percentage, default: 50
      t.integer :num_tournaments, default: 0
      t.integer :tournament_wins, default: 0
      t.integer :top_8s, default: 0

      t.timestamps
    end
  end
end
