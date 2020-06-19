class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :article
      t.string :image_id
      t.string :place
      t.string :date
      t.integer :time_status
      t.integer :area_id

      t.timestamps
    end
  end
end
