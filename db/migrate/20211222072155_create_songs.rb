class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.integer :platform, null: false
      t.string :url, null: false, limit: 2048
      t.string :video_id, null: false

      t.timestamps
    end
  end
end
