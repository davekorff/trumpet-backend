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

ActiveRecord::Schema.define(version: 2019_05_06_210607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reactions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "trumpet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reaction_type"
    t.index ["trumpet_id"], name: "index_reactions_on_trumpet_id"
    t.index ["user_id"], name: "index_reactions_on_user_id"
  end

  create_table "trumpets", force: :cascade do |t|
    t.string "trumpet_type"
    t.text "content"
    t.bigint "user_id"
    t.bigint "website_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary"
    t.string "img_url"
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
    t.string "email"
  end

  create_table "websites", force: :cascade do |t|
    t.string "url"
    t.string "root_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reactions", "trumpets"
  add_foreign_key "reactions", "users"
  add_foreign_key "trumpets", "users"
  add_foreign_key "trumpets", "websites"
end
