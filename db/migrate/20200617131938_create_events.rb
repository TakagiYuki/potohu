class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :article, null: false
      t.string :image_id, null: false
      t.string :place, null: false
      t.string :city, null: false
      t.string :date, null: false
      t.boolean :is_parking, null: false, default: false
      t.boolean :is_valid, null: false, default: false
      t.integer :area_id, null: false

      t.timestamps
    end
  end
end
