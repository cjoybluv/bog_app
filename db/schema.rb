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

ActiveRecord::Schema.define(version: 20150722043130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creatures", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "creatures_tags", force: :cascade do |t|
    t.integer  "creature_id"
    t.integer  "tag_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "creatures_tags", ["creature_id"], name: "index_creatures_tags_on_creature_id", using: :btree
  add_index "creatures_tags", ["tag_id"], name: "index_creatures_tags_on_tag_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "gps_coordinates"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sightings", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "creature_id"
    t.integer  "location_id"
    t.integer  "user_id"
  end

  add_index "sightings", ["creature_id"], name: "index_sightings_on_creature_id", using: :btree
  add_index "sightings", ["location_id"], name: "index_sightings_on_location_id", using: :btree
  add_index "sightings", ["user_id"], name: "index_sightings_on_user_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "creatures_tags", "creatures"
  add_foreign_key "creatures_tags", "tags"
  add_foreign_key "sightings", "creatures"
  add_foreign_key "sightings", "locations"
  add_foreign_key "sightings", "users"
end
