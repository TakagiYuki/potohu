class CreateEventSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :event_seasons do |t|
      t.integer :event_id
      t.integer :season_id
      t.timestamps
    end
  end
end
