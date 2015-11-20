class AddUniqueIndexesToBandsAndAlbums < ActiveRecord::Migration
  def change
    remove_index :bands, :name
    add_index :bands, :name, unique: true
    remove_index :albums, :name
    add_index :albums, [:band_id, :name], unique: true
    remove_index :tracks, :name
    add_index :tracks, [:album_id, :name], unique: true
  end
end
