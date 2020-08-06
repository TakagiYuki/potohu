class CreateEventComments < ActiveRecord::Migration[5.2]
  def change
    create_table :event_comments do |t|
      t.integer :user_id
      t.string :event_id
      t.text :comment
      t.string :image_id

      t.timestamps
    end
  end
end
