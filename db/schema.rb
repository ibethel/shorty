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

ActiveRecord::Schema.define(version: 20150526213406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "embedded_forms", force: :cascade do |t|
    t.string   "name"
    t.string   "url_slug"
    t.string   "service"
    t.string   "form_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shorts", force: :cascade do |t|
    t.string   "expanded"
    t.string   "contracted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "cached_slug"
    t.integer  "user_id"
  end

  add_index "shorts", ["contracted"], name: "index_shorts_on_contracted", using: :btree

  create_table "slugs", force: :cascade do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                  default: 1, null: false
    t.string   "sluggable_type", limit: 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], name: "index_slugs_on_n_s_s_and_s", unique: true, using: :btree
  add_index "slugs", ["sluggable_id"], name: "index_slugs_on_sluggable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "api_key"
  end

  add_index "users", ["api_key"], name: "index_users_on_api_key", unique: true, using: :btree

  create_table "visits", force: :cascade do |t|
    t.integer  "short_id"
    t.string   "referred"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ipaddress"
  end

  add_index "visits", ["short_id"], name: "index_visits_on_short_id", using: :btree

end
