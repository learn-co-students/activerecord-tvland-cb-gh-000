class AddColumnsToShows < ActiveRecord::Migration
  def change
    add_column :shows, :day, :string
    add_column :shows, :season, :string
    add_column :shows, :genre, :string
    add_column :shows, :network_id, :integer
  end
end
