class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :network_id
      t.string :genre
      t.string :season
      t.string :day
    end
  end
end
