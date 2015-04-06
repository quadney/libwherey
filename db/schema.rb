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

ActiveRecord::Schema.define(version: 20150406150547) do

  create_table "bssids", force: true do |t|
    t.string   "identifier"
    t.integer  "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "identifier",         limit: nil
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "current_population"
    t.integer  "total_capacity"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "university_id"
  end

  create_table "universities", force: true do |t|
    t.string   "name",       limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "zones", force: true do |t|
    t.string   "identifier"
    t.integer  "region_id"
    t.float    "gps_altitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "current_population"
    t.integer  "max_capacity"
  end

end
