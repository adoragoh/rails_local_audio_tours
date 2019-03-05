class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :url
      t.string :location
      t.references :tour, foreign_key: true
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
