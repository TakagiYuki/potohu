class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :article
      t.string :image_id
      t.string :prefecture
      t.string :city
      t.string :street
      t.string :date
      t.integer :time_status
      
      t.time :start_time
      t.integer :area_id
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
