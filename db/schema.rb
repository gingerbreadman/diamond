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

ActiveRecord::Schema.define(version: 20131209205508) do

  create_table "matches", force: true do |t|
    t.integer "merchant_id"
    t.integer "rfp_id"
  end

  create_table "merchants", force: true do |t|
    t.string "business_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "email"
    t.string "phone_number"
    t.string "image_url"
  end

  create_table "offers", force: true do |t|
    t.float   "price"
    t.string  "shape"
    t.string  "cut"
    t.string  "color"
    t.string  "clarity"
    t.float   "carat"
    t.text    "comment"
    t.integer "user_id"
    t.integer "merchant_id"
    t.integer "rfp_id"
  end

  create_table "rfps", force: true do |t|
    t.float   "max_price"
    t.string  "shape"
    t.string  "cut"
    t.string  "color"
    t.string  "clarity"
    t.float   "carat"
    t.text    "comment"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "zip_code"
    t.string   "email"
    t.string   "phone_number"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
