class AddFavoriteToBands < ActiveRecord::Migration
  def change
    add_column :bands, :favorite, :boolean
  end
end
