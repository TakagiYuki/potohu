class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :article
      t.string :image_id
      t.string :prefecture
      t.string :city
      t.string :street
      t.boolean :is_valid, default: true
      t.time :open_time_sunday
      t.time :close_time_sunday
      t.integer :area_id
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
