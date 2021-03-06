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

ActiveRecord::Schema.define(version: 20130704095025) do

  create_table "authors", force: true do |t|
    t.string   "uid",                     null: false
    t.string   "email",      default: ""
    t.string   "url",        default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authors", ["created_at"], name: "index_authors_on_created_at"
  add_index "authors", ["email"], name: "index_authors_on_email"
  add_index "authors", ["uid"], name: "index_authors_on_uid", unique: true
  add_index "authors", ["updated_at"], name: "index_authors_on_updated_at"

  create_table "entries", force: true do |t|
    t.integer  "author_id"
    t.integer  "rss_id"
    t.string   "uid",                       null: false
    t.string   "url",          default: ""
    t.string   "title",        default: ""
    t.text     "content",      default: ""
    t.datetime "published_at",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["author_id"], name: "index_entries_on_author_id"
  add_index "entries", ["created_at"], name: "index_entries_on_created_at"
  add_index "entries", ["published_at"], name: "index_entries_on_published_at"
  add_index "entries", ["rss_id"], name: "index_entries_on_rss_id"
  add_index "entries", ["updated_at"], name: "index_entries_on_updated_at"

  create_table "rsses", force: true do |t|
    t.string   "uid",        null: false
    t.string   "url",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rsses", ["created_at"], name: "index_rsses_on_created_at"
  add_index "rsses", ["uid"], name: "index_rsses_on_uid"
  add_index "rsses", ["updated_at"], name: "index_rsses_on_updated_at"

end
