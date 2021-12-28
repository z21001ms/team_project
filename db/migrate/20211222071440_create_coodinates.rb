class CreateCoodinates < ActiveRecord::Migration[6.1]
  def change
    create_table :coordinates do |t|
      t.float :latitude, null: false
      t.float :longitude, null: false

      t.timestamps
    end
  end
end
