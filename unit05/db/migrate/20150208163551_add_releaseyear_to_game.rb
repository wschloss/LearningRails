class AddReleaseyearToGame < ActiveRecord::Migration
  def change
  	add_column :games, :release_year, :integer
  end
end
