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

ActiveRecord::Schema.define(version: 20150715000416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_zip_codes", force: :cascade do |t|
    t.string  "zip"
    t.string  "primary_city"
    t.string  "alternate_names"
    t.string  "county"
    t.string  "area_codes"
    t.decimal "lattitude"
    t.decimal "longitude"
    t.integer "estimated_population"
    t.integer "state_id"
    t.string  "slug"
  end

  create_table "states", force: :cascade do |t|
    t.string "state_full"
    t.string "state_abbr"
    t.string "slug"
  end

end
