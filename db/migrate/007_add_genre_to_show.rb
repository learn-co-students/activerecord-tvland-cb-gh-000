class AddGenreToShow < ActiveRecord::Migration
  def change
    add_column :show, :genre, :string
  end
end
