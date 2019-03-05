class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :start_location
      t.text :description
      t.references :user, foreign_key: true
      t.integer :duration
      t.string :category
      t.string :language

      t.timestamps
    end
  end
end
