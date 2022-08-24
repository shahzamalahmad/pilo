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

ActiveRecord::Schema[7.0].define(version: 2022_08_24_171219) do
  create_table "areas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "area_name"
  end

  create_table "dprs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location_name"
    t.integer "area_id", null: false
    t.string "areaname"
    t.index ["area_id"], name: "index_locations_on_area_id"
  end

  create_table "operators", force: :cascade do |t|
    t.string "operator_name"
    t.string "location"
    t.string "area"
    t.string "plant_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id"
    t.index ["location_id"], name: "index_operators_on_location_id"
  end

  create_table "ro_dprs", force: :cascade do |t|
    t.integer "sr_no"
    t.string "location"
    t.string "operator_name"
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
    t.string "area"
    t.string "prepared_by"
    t.date "date"
    t.index ["dpr_id"], name: "index_ro_dprs_on_dpr_id"
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
    t.date "date"
    t.index ["dpr_id"], name: "index_stp_dprs_on_dpr_id"
  end

  add_foreign_key "locations", "areas"
  add_foreign_key "operators", "locations"
  add_foreign_key "ro_dprs", "dprs"
  add_foreign_key "stp_dprs", "dprs"
end
