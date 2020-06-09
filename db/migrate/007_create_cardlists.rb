class CreateCardlists < ActiveRecord::Migration[6.0]
  def change
    create_table :cardlists do |t|
      t.integer :deck_id
      t.integer :card_id

      t.timestamps
    end
  end
end
