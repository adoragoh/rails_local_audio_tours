class AddCoordinatesToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :latitude, :float
    add_column :tracks, :longitude, :float
  end
end
