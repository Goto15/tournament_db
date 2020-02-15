class CreateCardlists < ActiveRecord::Migration[6.0]
  def change
    create_table :cardslists do |t|
      t.integer :deck_id
      t.integer :card_id
      t.integer :quantity
    end
  end
end
