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

ActiveRecord::Schema.define(version: 20150721094948) do

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.integer  "position"
    t.boolean  "visible"
    t.string   "link"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id"

  create_table "sections", force: :cascade do |t|
    t.string   "title"
    t.string   "sti"
    t.string   "rails"
    t.string   "g"
    t.string   "model"
    t.string   "Section"
    t.text     "content"
    t.boolean  "visible"
    t.integer  "position"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.string   "position"
    t.string   "integer"
    t.boolean  "visible"
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

end