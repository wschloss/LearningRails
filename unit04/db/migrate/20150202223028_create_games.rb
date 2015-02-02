class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.decimal :price, precision: 4, scale: 2
      t.string :genre

      t.timestamps
    end
  end
end
