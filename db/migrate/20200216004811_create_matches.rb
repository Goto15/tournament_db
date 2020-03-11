class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :tournament_id
      t.integer :winner_id
      t.integer :loser_id
      t.string :round
    end
  end
end
