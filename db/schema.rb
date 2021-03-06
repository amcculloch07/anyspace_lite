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

ActiveRecord::Schema.define(version: 20161129200108) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "coordinators", force: :cascade do |t|
    t.text     "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "venue_id"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: :cascade do |t|
    t.string   "title"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "coordinator_id"
    t.string   "website"
    t.integer  "capacity"
    t.text     "description"
    t.text     "cancellation_policy"
    t.text     "drink_options"
    t.text     "food_options"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ratings_count"
    t.float    "address_latitude"
    t.float    "address_longitude"
    t.string   "address_formatted_address"
  end

end
