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

ActiveRecord::Schema.define(version: 20130327005406) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "reason"
    t.integer  "price"
    t.string   "url"
    t.integer  "severity"
    t.integer  "howto"
    t.date     "buydate"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "done_flag"
  end

  create_table "identities", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "name"
    t.integer  "order"
    t.integer  "price"
    t.integer  "user_id"
    t.integer  "train_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routes", ["train_id"], name: "index_routes_on_train_id"

  create_table "trains", force: true do |t|
    t.string   "title"
    t.string   "memo"
    t.date     "take_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider",    null: false
    t.string   "uid",         null: false
    t.string   "name",        null: false
    t.string   "screen_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
