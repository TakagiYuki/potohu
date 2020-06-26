class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image_id
      t.boolean :is_admin, default: false
      t.integer :counter_hokaido
      t.integer :counter_aomori
      t.integer :counter_iwate
      t.integer :counter_miyagi
      t.integer :counter_akita
      t.integer :counter_yamagata
      t.integer :counter_hukushima
      t.integer :counter_ibaraki
      t.integer :counter_tochigi
      t.integer :counter_gunma
      t.integer :counter_saitama
      t.integer :counter_chiba
      t.integer :counter_tokyo
      t.integer :counter_kanagawa
      t.integer :counter_niigata
      t.integer :counter_toyama
      t.integer :counter_ishikawa
      t.integer :counter_hukui
      t.integer :counter_yamanashi
      t.integer :counter_nagano
      t.integer :counter_gihu
      t.integer :counter_shizuoka
      t.integer :counter_aichi
      t.integer :counter_mie
      t.integer :counter_shiga
      t.integer :counter_kyoto
      t.integer :counter_osaka
      t.integer :counter_hyogo
      t.integer :counter_nara
      t.integer :counter_wakayama
      t.integer :counter_tottori
      t.integer :counter_shimane
      t.integer :counter_okayama
      t.integer :counter_hiroshima
      t.integer :counter_yamaguchi
      t.integer :counter_tokushima
      t.integer :counter_kagawa
      t.integer :counter_ehime
      t.integer :counter_kouchi
      t.integer :counter_hukuoka
      t.integer :counter_saga
      t.integer :counter_nagasaki
      t.integer :counter_kumamoto
      t.integer :counter_oita
      t.integer :counter_miyazaki
      t.integer :counter_kagoshima
      t.integer :counter_okinawa
      t.timestamps
    end
  end
end
