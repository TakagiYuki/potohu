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

ActiveRecord::Schema.define(version: 2020_07_03_002714) do

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
    t.boolean "is_valid", default: true
    t.time "open_time_sunday"
    t.time "close_time_sunday"
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

  create_table "impressions", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image_id"
    t.boolean "admin", default: false
    t.integer "counter_hokkaido", default: 0
    t.integer "counter_aomori", default: 0
    t.integer "counter_iwate", default: 0
    t.integer "counter_miyagi", default: 0
    t.integer "counter_akita", default: 0
    t.integer "counter_yamagata", default: 0
    t.integer "counter_hukushima", default: 0
    t.integer "counter_ibaraki", default: 0
    t.integer "counter_tochigi", default: 0
    t.integer "counter_gunma", default: 0
    t.integer "counter_saitama", default: 0
    t.integer "counter_chiba", default: 0
    t.integer "counter_tokyo", default: 0
    t.integer "counter_kanagawa", default: 0
    t.integer "counter_niigata", default: 0
    t.integer "counter_toyama", default: 0
    t.integer "counter_ishikawa", default: 0
    t.integer "counter_hukui", default: 0
    t.integer "counter_yamanashi", default: 0
    t.integer "counter_nagano", default: 0
    t.integer "counter_gihu", default: 0
    t.integer "counter_shizuoka", default: 0
    t.integer "counter_aichi", default: 0
    t.integer "counter_mie", default: 0
    t.integer "counter_shiga", default: 0
    t.integer "counter_kyoto", default: 0
    t.integer "counter_osaka", default: 0
    t.integer "counter_hyogo", default: 0
    t.integer "counter_nara", default: 0
    t.integer "counter_wakayama", default: 0
    t.integer "counter_tottori", default: 0
    t.integer "counter_shimane", default: 0
    t.integer "counter_okayama", default: 0
    t.integer "counter_hiroshima", default: 0
    t.integer "counter_yamaguchi", default: 0
    t.integer "counter_tokushima", default: 0
    t.integer "counter_kagawa", default: 0
    t.integer "counter_ehime", default: 0
    t.integer "counter_kouchi", default: 0
    t.integer "counter_hukuoka", default: 0
    t.integer "counter_saga", default: 0
    t.integer "counter_nagasaki", default: 0
    t.integer "counter_kumamoto", default: 0
    t.integer "counter_oita", default: 0
    t.integer "counter_miyazaki", default: 0
    t.integer "counter_kagoshima", default: 0
    t.integer "counter_okinawa", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
