class CreateEventTags < ActiveRecord::Migration[5.2]
  def change
    create_table :event_tags do |t|
      t.integer :tag_id
      t.integer :event_id

      t.timestamps
    end
  end
end
