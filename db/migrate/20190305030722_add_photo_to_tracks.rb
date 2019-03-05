class AddPhotoToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :photo, :string
  end
end
