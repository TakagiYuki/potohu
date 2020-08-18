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
      t.date :open_time, default: '2010-11-11'
      t.date :close_time, default: '2010-11-11'
      t.integer :area_id
      t.float :latitude
      t.float :longitude
      t.timestamps
      t.boolean :pick_up
    end
  end
end
