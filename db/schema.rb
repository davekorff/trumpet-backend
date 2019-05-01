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

ActiveRecord::Schema.define(version: 2019_05_01_231105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.string "trumpet_type"
    t.string "content"
    t.bigint "user_id"
    t.bigint "website_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_alerts_on_user_id"
    t.index ["website_id"], name: "index_alerts_on_website_id"
  end

  create_table "trumpets", force: :cascade do |t|
    t.string "trumpet_type"
    t.string "content"
    t.bigint "user_id"
    t.bigint "website_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trumpets_on_user_id"
    t.index ["website_id"], name: "index_trumpets_on_website_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "websites", force: :cascade do |t|
    t.string "url"
    t.string "root_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alerts", "users"
  add_foreign_key "alerts", "websites"
  add_foreign_key "trumpets", "users"
  add_foreign_key "trumpets", "websites"
end
