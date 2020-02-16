class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :format
      t.datetime :date
      
      t.timestamps
    end
  end
end
