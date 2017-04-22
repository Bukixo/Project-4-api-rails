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

ActiveRecord::Schema.define(version: 20170422135835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["style_id"], name: "index_comments_on_style_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "styles", force: :cascade do |t|
    t.integer  "type_id"
    t.integer  "user_id"
    t.string   "name"
    t.text     "procedure"
    t.text     "products"
    t.date     "date"
    t.integer  "durability"
    t.string   "image"
    t.boolean  "own"
    t.boolean  "privacy"
    t.string   "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_styles_on_type_id", using: :btree
    t.index ["user_id"], name: "index_styles_on_user_id", using: :btree
  end

  create_table "styles_users", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "style_id", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.boolean  "privacy"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
    t.integer  "github_id"
  end

  add_foreign_key "comments", "styles"
  add_foreign_key "comments", "users"
  add_foreign_key "styles", "types"
  add_foreign_key "styles", "users"
end
