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

ActiveRecord::Schema.define(version: 2019_01_16_040919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "club_devices", force: :cascade do |t|
    t.string "number", default: ""
    t.date "date_of_issue"
    t.date "valid_to"
    t.string "call_sign", default: ""
    t.string "category", default: ""
    t.integer "transmitter_power"
    t.string "name_type_station", default: ""
    t.string "emission", default: ""
    t.string "input_frequency", default: ""
    t.string "output_frequency", default: ""
    t.string "enduser_name", default: ""
    t.string "enduser_city", default: ""
    t.string "enduser_street", default: ""
    t.string "enduser_house", default: ""
    t.string "enduser_number", default: ""
    t.string "applicant_name", default: ""
    t.string "applicant_city", default: ""
    t.string "applicant_street", default: ""
    t.string "applicant_house", default: ""
    t.string "applicant_number", default: ""
    t.string "station_city", default: ""
    t.string "station_street", default: ""
    t.string "station_house", default: ""
    t.string "station_number", default: ""
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_city"], name: "index_club_devices_on_applicant_city"
    t.index ["applicant_house"], name: "index_club_devices_on_applicant_house"
    t.index ["applicant_name"], name: "index_club_devices_on_applicant_name"
    t.index ["applicant_number"], name: "index_club_devices_on_applicant_number"
    t.index ["applicant_street"], name: "index_club_devices_on_applicant_street"
    t.index ["call_sign"], name: "index_club_devices_on_call_sign"
    t.index ["category"], name: "index_club_devices_on_category"
    t.index ["date_of_issue"], name: "index_club_devices_on_date_of_issue"
    t.index ["emission"], name: "index_club_devices_on_emission"
    t.index ["enduser_city"], name: "index_club_devices_on_enduser_city"
    t.index ["enduser_house"], name: "index_club_devices_on_enduser_house"
    t.index ["enduser_name"], name: "index_club_devices_on_enduser_name"
    t.index ["enduser_number"], name: "index_club_devices_on_enduser_number"
    t.index ["enduser_street"], name: "index_club_devices_on_enduser_street"
    t.index ["input_frequency"], name: "index_club_devices_on_input_frequency"
    t.index ["lat"], name: "index_club_devices_on_lat"
    t.index ["lng"], name: "index_club_devices_on_lng"
    t.index ["name_type_station"], name: "index_club_devices_on_name_type_station"
    t.index ["number"], name: "index_club_devices_on_number"
    t.index ["output_frequency"], name: "index_club_devices_on_output_frequency"
    t.index ["station_city"], name: "index_club_devices_on_station_city"
    t.index ["station_house"], name: "index_club_devices_on_station_house"
    t.index ["station_number"], name: "index_club_devices_on_station_number"
    t.index ["station_street"], name: "index_club_devices_on_station_street"
    t.index ["transmitter_power"], name: "index_club_devices_on_transmitter_power"
    t.index ["valid_to"], name: "index_club_devices_on_valid_to"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "number", default: ""
    t.date "date_of_issue"
    t.date "valid_to"
    t.string "call_sign", default: ""
    t.string "category", default: ""
    t.integer "transmitter_power"
    t.string "enduser_name", default: ""
    t.string "enduser_city", default: ""
    t.string "enduser_street", default: ""
    t.string "enduser_house", default: ""
    t.string "enduser_number", default: ""
    t.string "applicant_name", default: ""
    t.string "applicant_city", default: ""
    t.string "applicant_street", default: ""
    t.string "applicant_house", default: ""
    t.string "applicant_number", default: ""
    t.string "station_city", default: ""
    t.string "station_street", default: ""
    t.string "station_house", default: ""
    t.string "station_number", default: ""
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_city"], name: "index_clubs_on_applicant_city"
    t.index ["applicant_house"], name: "index_clubs_on_applicant_house"
    t.index ["applicant_name"], name: "index_clubs_on_applicant_name"
    t.index ["applicant_number"], name: "index_clubs_on_applicant_number"
    t.index ["applicant_street"], name: "index_clubs_on_applicant_street"
    t.index ["call_sign"], name: "index_clubs_on_call_sign"
    t.index ["category"], name: "index_clubs_on_category"
    t.index ["date_of_issue"], name: "index_clubs_on_date_of_issue"
    t.index ["enduser_city"], name: "index_clubs_on_enduser_city"
    t.index ["enduser_house"], name: "index_clubs_on_enduser_house"
    t.index ["enduser_name"], name: "index_clubs_on_enduser_name"
    t.index ["enduser_number"], name: "index_clubs_on_enduser_number"
    t.index ["enduser_street"], name: "index_clubs_on_enduser_street"
    t.index ["lat"], name: "index_clubs_on_lat"
    t.index ["lng"], name: "index_clubs_on_lng"
    t.index ["number"], name: "index_clubs_on_number"
    t.index ["station_city"], name: "index_clubs_on_station_city"
    t.index ["station_house"], name: "index_clubs_on_station_house"
    t.index ["station_number"], name: "index_clubs_on_station_number"
    t.index ["station_street"], name: "index_clubs_on_station_street"
    t.index ["transmitter_power"], name: "index_clubs_on_transmitter_power"
    t.index ["valid_to"], name: "index_clubs_on_valid_to"
  end

  create_table "individual_devices", force: :cascade do |t|
    t.string "number", default: ""
    t.date "date_of_issue"
    t.date "valid_to"
    t.string "call_sign", default: ""
    t.string "category", default: ""
    t.integer "transmitter_power"
    t.string "name_type_station", default: ""
    t.string "emission", default: ""
    t.string "input_frequency", default: ""
    t.string "output_frequency", default: ""
    t.string "station_location", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_sign"], name: "index_individual_devices_on_call_sign"
    t.index ["category"], name: "index_individual_devices_on_category"
    t.index ["date_of_issue"], name: "index_individual_devices_on_date_of_issue"
    t.index ["emission"], name: "index_individual_devices_on_emission"
    t.index ["input_frequency"], name: "index_individual_devices_on_input_frequency"
    t.index ["name_type_station"], name: "index_individual_devices_on_name_type_station"
    t.index ["number"], name: "index_individual_devices_on_number"
    t.index ["output_frequency"], name: "index_individual_devices_on_output_frequency"
    t.index ["station_location"], name: "index_individual_devices_on_station_location"
    t.index ["valid_to"], name: "index_individual_devices_on_valid_to"
  end

  create_table "individuals", force: :cascade do |t|
    t.string "number", default: ""
    t.date "date_of_issue"
    t.date "valid_to"
    t.string "call_sign", default: ""
    t.string "category", default: ""
    t.integer "transmitter_power"
    t.string "station_location", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_sign"], name: "index_individuals_on_call_sign"
    t.index ["category"], name: "index_individuals_on_category"
    t.index ["date_of_issue"], name: "index_individuals_on_date_of_issue"
    t.index ["number"], name: "index_individuals_on_number"
    t.index ["station_location"], name: "index_individuals_on_station_location"
    t.index ["transmitter_power"], name: "index_individuals_on_transmitter_power"
    t.index ["valid_to"], name: "index_individuals_on_valid_to"
  end

end
