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

ActiveRecord::Schema.define(version: 20140514200630) do

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.string   "background_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "background_image_file_name"
    t.string   "background_image_content_type"
    t.integer  "background_image_file_size"
    t.datetime "background_image_updated_at"
  end

  create_table "classifieds", force: true do |t|
    t.string   "title"
    t.date     "date_posted"
    t.string   "picture"
    t.integer  "price"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "summary_point_1"
    t.string   "summary_point_2"
    t.string   "summary_point_3"
  end

  create_table "entries", force: true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.text     "text"
    t.string   "pictures"
    t.string   "videos"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "clip_file_name"
    t.string   "clip_content_type"
    t.integer  "clip_file_size"
    t.datetime "clip_updated_at"
    t.string   "url"
    t.string   "video_code"
  end

end
