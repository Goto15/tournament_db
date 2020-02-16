class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.integer :player_id
      t.integer :deck_id

      t.timestamps
    end
  end
end
