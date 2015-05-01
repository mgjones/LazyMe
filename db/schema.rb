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

ActiveRecord::Schema.define(version: 20150501222328) do

  create_table "refrigerators", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "model_variations"
    t.string   "configuration"
    t.string   "defrost_type"
    t.string   "compact?"
    t.string   "through_door_dispenser?"
    t.string   "automatic_icemaker?"
    t.float    "volume_cu_ft"
    t.string   "adjusted_volume_cu_ft"
    t.float    "kwh_per_year"
    t.string   "federal_standard_kwh_per_year"
    t.string   "measured_federal_standard_kwh_per_year"
    t.string   "percent_better_than_measured_federal_standard"
    t.string   "cee_tier"
    t.decimal  "rating",                                        precision: 1, scale: 1
    t.decimal  "popularity",                                    precision: 1, scale: 2
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "rating"
    t.integer  "refrigerator_id"
    t.text     "description"
    t.string   "author"
    t.integer  "upvote"
    t.integer  "downvote"
  end

  create_table "shopping_cart_items", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "quantity"
    t.integer  "item_id"
    t.string   "item_type"
    t.float    "price"
    t.integer  "refrigerator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
