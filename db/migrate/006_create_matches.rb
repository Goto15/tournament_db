class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :tournament_id
      t.integer :winner_id
      t.integer :loser_id
      t.float :elo_delta
      t.string :round
      t.float :format_elo_delta

      t.timestamps
    end
  end
end
