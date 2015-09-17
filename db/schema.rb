# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150917124137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bosses", force: :cascade do |t|
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.string   "name"
    t.string   "avatar_url"
    t.string   "repo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bosses", ["provider", "uid"], name: "index_bosses_on_provider_and_uid", unique: true, using: :btree
  add_index "bosses", ["provider"], name: "index_bosses_on_provider", using: :btree
  add_index "bosses", ["uid"], name: "index_bosses_on_uid", using: :btree

  create_table "centers", force: :cascade do |t|
    t.string   "location"
    t.integer  "boss_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "centers", ["boss_id"], name: "index_centers_on_boss_id", using: :btree

  create_table "codes", force: :cascade do |t|
    t.integer  "quantity"
    t.float    "unit_price"
    t.integer  "center_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "codes", ["center_id"], name: "index_codes_on_center_id", using: :btree
  add_index "codes", ["language_id"], name: "index_codes_on_language_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "centers", "bosses"
  add_foreign_key "codes", "centers"
  add_foreign_key "codes", "languages"
end
