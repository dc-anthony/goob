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

ActiveRecord::Schema.define(version: 2019_05_13_140808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "channels", force: :cascade do |t|
    t.bigint "server_id"
    t.string "channel_name", null: false
    t.index ["server_id"], name: "index_channels_on_server_id"
  end

  create_table "ip_addresses", force: :cascade do |t|
    t.string "ip", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ip_address_id"
    t.index ["ip_address_id"], name: "index_locations_on_ip_address_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "channel_id"
    t.text "message_content", null: false
    t.string "timestamp", null: false
    t.index ["channel_id"], name: "index_messages_on_channel_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "servers", force: :cascade do |t|
    t.bigint "admin_id", null: false
    t.string "server_name", null: false
    t.index ["admin_id"], name: "index_servers_on_admin_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role", default: "guest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
