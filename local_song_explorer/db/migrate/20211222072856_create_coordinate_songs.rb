class CreateCoordinateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :coordinate_songs do |t|
      t.references :coordinate, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
