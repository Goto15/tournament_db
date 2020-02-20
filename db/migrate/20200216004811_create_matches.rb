class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :tournament_id
      # Remove ID's and use polymorphism to relate registration id's in the model
      t.integer :winner_id
      t.integer :loser_id
      t.string :round

      t.timestamps
    end
  end
end
