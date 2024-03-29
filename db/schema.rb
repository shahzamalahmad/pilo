# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_14_192002) do
  create_table "areas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "area_name"
    t.integer "user_id"
    t.index ["user_id"], name: "index_areas_on_user_id"
  end

  create_table "dprs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_id", null: false
    t.integer "user_id"
    t.index ["area_id"], name: "index_locations_on_area_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "operators", force: :cascade do |t|
    t.string "operator_name"
    t.string "plant_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id", null: false
    t.integer "area_id", null: false
    t.integer "user_id"
    t.index ["area_id"], name: "index_operators_on_area_id"
    t.index ["location_id"], name: "index_operators_on_location_id"
    t.index ["user_id"], name: "index_operators_on_user_id"
  end

  create_table "ro_dprs", force: :cascade do |t|
    t.integer "sr_no"
    t.integer "tshirt"
    t.integer "icard"
    t.integer "mask"
    t.integer "shoes"
    t.integer "hygiene"
    t.integer "live_location"
    t.integer "behaviour"
    t.integer "punctuality"
    t.integer "photos"
    t.integer "machine_videos"
    t.integer "feedback"
    t.integer "inspaction"
    t.integer "backlight"
    t.integer "wrapping"
    t.integer "tv"
    t.integer "glass"
    t.integer "nozzle"
    t.integer "cip_backwash"
    t.integer "cleaning"
    t.integer "camera"
    t.integer "total_marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dpr_id"
    t.string "ph"
    t.string "temp"
    t.string "tds"
    t.string "flow"
    t.string "prepared_by"
    t.date "date"
    t.string "plant_type"
    t.integer "operator_id"
    t.integer "area_id"
    t.integer "location_id"
    t.integer "user_id"
    t.index ["area_id"], name: "index_ro_dprs_on_area_id"
    t.index ["dpr_id"], name: "index_ro_dprs_on_dpr_id"
    t.index ["location_id"], name: "index_ro_dprs_on_location_id"
    t.index ["operator_id"], name: "index_ro_dprs_on_operator_id"
    t.index ["user_id"], name: "index_ro_dprs_on_user_id"
  end

  create_table "stp_dprs", force: :cascade do |t|
    t.string "sr_no"
    t.string "location"
    t.string "operator_name"
    t.string "uniform"
    t.string "mask"
    t.string "photos"
    t.string "videos"
    t.string "live_location"
    t.string "behaviour"
    t.string "punctuality"
    t.string "pcl_display_picture"
    t.string "daily_report"
    t.string "r_and_m"
    t.string "backwash"
    t.string "blower_oil"
    t.string "compressor_oil"
    t.string "total_marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dpr_id"
    t.string "outer_area_maintainance"
    t.integer "user_id"
    t.integer "area_id"
    t.integer "location_id"
    t.integer "operator_id"
    t.date "date"
    t.index ["area_id"], name: "index_stp_dprs_on_area_id"
    t.index ["dpr_id"], name: "index_stp_dprs_on_dpr_id"
    t.index ["location_id"], name: "index_stp_dprs_on_location_id"
    t.index ["operator_id"], name: "index_stp_dprs_on_operator_id"
    t.index ["user_id"], name: "index_stp_dprs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "locations", "areas"
  add_foreign_key "operators", "areas"
  add_foreign_key "operators", "locations"
  add_foreign_key "ro_dprs", "areas"
  add_foreign_key "ro_dprs", "dprs"
  add_foreign_key "ro_dprs", "locations"
  add_foreign_key "ro_dprs", "operators"
  add_foreign_key "stp_dprs", "areas"
  add_foreign_key "stp_dprs", "dprs"
  add_foreign_key "stp_dprs", "locations"
  add_foreign_key "stp_dprs", "operators"
end
