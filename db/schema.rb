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

ActiveRecord::Schema.define(version: 20150503030452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rides", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "departure_address"
    t.string   "destination_address"
    t.date     "departure_date"
    t.time     "departure_time"
    t.string   "car_make"
    t.string   "car_model"
    t.integer  "car_year"
    t.integer  "car_comfort_level"
    t.integer  "car_condition"
    t.integer  "seats_available"
    t.integer  "luggage_restriction"
    t.decimal  "price",               precision: 10, scale: 2
    t.text     "comment"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.date     "birthdate"
    t.integer  "gender"
    t.string   "drivers_license_state",            limit: 50
    t.string   "drivers_insurance_company"
    t.boolean  "rider_restriction_allow_music"
    t.boolean  "rider_restriction_non_smoking"
    t.boolean  "rider_restriction_allow_dogs"
    t.boolean  "rider_restriction_allow_cats"
    t.boolean  "rider_restriction_allow_children"
    t.boolean  "rider_restriction_allow_food"
    t.integer  "rider_default_number_of_seats"
    t.integer  "rider_preference_music_audio"
    t.integer  "rider_preference_smoking"
    t.integer  "rider_preference_pets"
    t.integer  "rider_preference_allergies"
    t.integer  "rider_preference_food"
    t.integer  "rider_preference_children"
    t.integer  "rider_preference_conversation"
  end

end
