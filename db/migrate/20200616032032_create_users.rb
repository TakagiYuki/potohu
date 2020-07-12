class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image_id
      t.boolean :admin, default: false
      t.integer :counter_hokkaido, default: 0
      t.integer :counter_aomori, default: 0
      t.integer :counter_iwate, default: 0
      t.integer :counter_miyagi, default: 0
      t.integer :counter_akita, default: 0
      t.integer :counter_yamagata, default: 0
      t.integer :counter_hukushima, default: 0
      t.integer :counter_ibaraki, default: 0
      t.integer :counter_tochigi, default: 0
      t.integer :counter_gunma, default: 0
      t.integer :counter_saitama, default: 0
      t.integer :counter_chiba, default: 0
      t.integer :counter_tokyo, default: 0
      t.integer :counter_kanagawa, default: 0
      t.integer :counter_niigata, default: 0
      t.integer :counter_toyama, default: 0
      t.integer :counter_ishikawa, default: 0
      t.integer :counter_hukui, default: 0
      t.integer :counter_yamanashi, default: 0
      t.integer :counter_nagano, default: 0
      t.integer :counter_gihu, default: 0
      t.integer :counter_shizuoka, default: 0
      t.integer :counter_aichi, default: 0
      t.integer :counter_mie, default: 0
      t.integer :counter_shiga, default: 0
      t.integer :counter_kyoto, default: 0
      t.integer :counter_osaka, default: 0
      t.integer :counter_hyogo, default: 0
      t.integer :counter_nara, default: 0
      t.integer :counter_wakayama, default: 0
      t.integer :counter_tottori, default: 0
      t.integer :counter_shimane, default: 0
      t.integer :counter_okayama, default: 0
      t.integer :counter_hiroshima, default: 0
      t.integer :counter_yamaguchi, default: 0
      t.integer :counter_tokushima, default: 0
      t.integer :counter_kagawa, default: 0
      t.integer :counter_ehime, default: 0
      t.integer :counter_kouchi, default: 0
      t.integer :counter_hukuoka, default: 0
      t.integer :counter_saga, default: 0
      t.integer :counter_nagasaki, default: 0
      t.integer :counter_kumamoto, default: 0
      t.integer :counter_oita, default: 0
      t.integer :counter_miyazaki, default: 0
      t.integer :counter_kagoshima, default: 0
      t.integer :counter_okinawa, default: 0
      t.timestamps
    end
  end
end
