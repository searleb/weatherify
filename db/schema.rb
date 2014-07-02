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

ActiveRecord::Schema.define(version: 20140702062058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "histories", force: true do |t|
    t.string   "location"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "time"
    t.string   "weather_summary"
    t.string   "weather_temp"
  end

  create_table "tracks", force: true do |t|
    t.string   "spotify_uri"
    t.integer  "history_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "spotify_image"
    t.string   "track_name"
    t.string   "track_artist"
    t.string   "track_album"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "is_admin",        default: false
  end

end
