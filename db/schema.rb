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

ActiveRecord::Schema.define(version: 2019_06_04_201944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blood_sugar_records", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "blood_sugar"
    t.string "record_time"
    t.string "record_date"
    t.integer "carbs"
    t.integer "insulin_units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blood_sugar_records_on_user_id"
  end

  create_table "diabetes_metrics", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "height"
    t.integer "weight"
    t.integer "blood_sugar_target_low"
    t.integer "blood_sugar_target_high"
    t.integer "morning_insulin_to_carb_ratio"
    t.integer "noon_insulin_to_carb_ratio"
    t.integer "night_insulin_to_carb_ratio"
    t.integer "morning_lantus_units"
    t.integer "night_lantus_units"
    t.float "a1c_goal"
    t.integer "weight_goal"
    t.text "personal_goal"
    t.string "glucometer_brand"
    t.string "fast_insulin_brand"
    t.string "long_insulin_brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_diabetes_metrics_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blood_sugar_records", "users"
  add_foreign_key "diabetes_metrics", "users"
end
