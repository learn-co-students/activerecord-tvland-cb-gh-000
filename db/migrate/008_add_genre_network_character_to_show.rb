class AddGenreNetworkCharacterToShow < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    #add_column :shows, :network_id, :integer
    add_column :shows, :character_id, :integer
  end
end
