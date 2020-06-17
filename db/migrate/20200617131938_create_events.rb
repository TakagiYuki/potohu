class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :article
      t.string :image_id
      t.string :place
      t.string :city
      t.string :date
      t.boolean :is_parking
      t.boolean :is_valid

      t.timestamps
    end
  end
end
