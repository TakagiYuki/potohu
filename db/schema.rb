# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_19_065213) do

  create_table "areas", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_comments", force: :cascade do |t|
    t.integer "user_id"
    t.string "event_id"
    t.text "comment"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "article"
    t.string "image_id"
    t.string "prefecture"
    t.string "city"
    t.string "street"
    t.string "date"
    t.integer "time_status"
    t.integer "area_id"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image_id"
    t.boolean "is_admin", default: false
    t.integer "counter_hokaido"
    t.integer "counter_aomori"
    t.integer "counter_iwate"
    t.integer "counter_miyagi"
    t.integer "counter_akita"
    t.integer "counter_yamagata"
    t.integer "counter_hukushima"
    t.integer "counter_ibaraki"
    t.integer "counter_tochigi"
    t.integer "counter_gunma"
    t.integer "counter_saitama"
    t.integer "counter_chiba"
    t.integer "counter_tokyo"
    t.integer "counter_kanagawa"
    t.integer "counter_niigata"
    t.integer "counter_toyama"
    t.integer "counter_ishikawa"
    t.integer "counter_hukui"
    t.integer "counter_yamanashi"
    t.integer "counter_nagano"
    t.integer "counter_gihu"
    t.integer "counter_shizuoka"
    t.integer "counter_aichi"
    t.integer "counter_mie"
    t.integer "counter_shiga"
    t.integer "counter_kyoto"
    t.integer "counter_osaka"
    t.integer "counter_hyogo"
    t.integer "counter_nara"
    t.integer "counter_wakayama"
    t.integer "counter_tottori"
    t.integer "counter_shimane"
    t.integer "counter_okayama"
    t.integer "counter_hiroshima"
    t.integer "counter_yamaguchi"
    t.integer "counter_tokushima"
    t.integer "counter_kagawa"
    t.integer "counter_ehime"
    t.integer "counter_kouchi"
    t.integer "counter_hukuoka"
    t.integer "counter_saga"
    t.integer "counter_nagasaki"
    t.integer "counter_kumamoto"
    t.integer "counter_oita"
    t.integer "counter_miyazaki"
    t.integer "counter_kagoshima"
    t.integer "counter_okinawa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
