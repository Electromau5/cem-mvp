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

ActiveRecord::Schema.define(version: 20160323084043) do

  create_table "listings", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.text     "feature1"
    t.text     "feature2"
    t.text     "feature3"
    t.string   "site"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
  end

  create_table "listings_reviews", id: false, force: :cascade do |t|
    t.integer "listing_id"
    t.integer "review_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.string   "ft1"
    t.text     "f1"
    t.string   "ft2"
    t.text     "f2"
    t.string   "ft3"
    t.text     "f3"
    t.string   "ft4"
    t.text     "f4"
    t.string   "ft5"
    t.text     "f5"
    t.string   "st1"
    t.string   "s1"
    t.string   "st2"
    t.string   "s2"
    t.string   "st3"
    t.string   "s3"
    t.string   "st4"
    t.string   "s4"
    t.string   "st5"
    t.string   "s5"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating1"
    t.integer  "rating2"
    t.integer  "rating3"
    t.integer  "rating4"
    t.integer  "rating5"
    t.string   "spec"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.boolean  "seller",          default: false
    t.string   "location"
    t.text     "description"
    t.string   "storename"
  end

end
