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

ActiveRecord::Schema.define(version: 20160415190022) do

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
    t.string   "expanded",    limit: 510
    t.string   "contracted",  limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",       limit: 510
    t.string   "cached_slug", limit: 510
    t.integer  "user_id"
  end

  create_table "slugs", force: :cascade do |t|
    t.string   "name",           limit: 510
    t.integer  "sluggable_id"
    t.integer  "sequence",                   default: 1, null: false
    t.string   "sluggable_type", limit: 80
    t.string   "scope",          limit: 510
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], name: "slugs_name_sluggable_type_sequence_scope_key", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",   limit: 510
    t.string   "uid",        limit: 510
    t.string   "name",       limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "api_key",    limit: 510
    t.string   "email"
  end

  add_index "users", ["api_key"], name: "users_api_key_key", unique: true, using: :btree

  create_table "visits", force: :cascade do |t|
    t.integer  "short_id"
    t.string   "referred",   limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ipaddress",  limit: 510
  end

end
