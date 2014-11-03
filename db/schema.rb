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

ActiveRecord::Schema.define(version: 20141104051950) do

  create_table "admin_users", force: true do |t|
    t.string   "first_name",      limit: 255, default: "",    null: false
    t.string   "last_name",       limit: 255, default: "",    null: false
    t.string   "role",            limit: 255,                 null: false
    t.string   "email",           limit: 255,                 null: false
    t.boolean  "status",          limit: 1,   default: false
    t.string   "token",           limit: 255,                 null: false
    t.string   "password_digest", limit: 255,                 null: false
    t.string   "preferences",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.string   "phone_number", limit: 255
    t.text     "message",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "projects", force: true do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "url",         limit: 255
    t.string   "photo",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "client",      limit: 255
    t.date     "start_date"
    t.date     "end_date"
  end

end
