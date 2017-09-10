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

ActiveRecord::Schema.define(version: 20170910120720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.string "sites"
    t.text "about"
    t.boolean "chip"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.text "note"
    t.integer "values"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "metro"
    t.float "lat"
    t.float "lng"
    t.bigint "locatable_id"
    t.string "locatable_type"
    t.index ["locatable_type", "locatable_id"], name: "index_locations_on_locatable_type_and_locatable_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.text "note"
    t.string "conditions"
    t.string "advantages"
    t.datetime "date_start"
    t.datetime "date_end"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "name"
    t.string "sites"
    t.text "about"
    t.boolean "medicine"
    t.boolean "scale"
  end

  create_table "phones", force: :cascade do |t|
    t.integer "country_code"
    t.integer "provider_code"
    t.integer "number"
    t.string "note"
    t.bigint "phonable_id"
    t.string "phonable_type"
    t.index ["phonable_type", "phonable_id"], name: "index_phones_on_phonable_type_and_phonable_id"
  end

  create_table "rates", force: :cascade do |t|
    t.integer "counter"
    t.integer "value"
    t.bigint "ratable_id"
    t.string "ratable_type"
    t.index ["ratable_type", "ratable_id"], name: "index_rates_on_ratable_type_and_ratable_id"
  end

  create_table "responses", force: :cascade do |t|
    t.string "head"
    t.text "body"
    t.integer "mark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "responsable_id"
    t.string "responsable_type"
    t.index ["responsable_type", "responsable_id"], name: "index_responses_on_responsable_type_and_responsable_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.text "work_days"
    t.text "work_hours"
    t.text "break_hours"
    t.string "note"
    t.bigint "schedulable_id"
    t.string "schedulable_type"
    t.index ["schedulable_type", "schedulable_id"], name: "index_schedules_on_schedulable_type_and_schedulable_id"
  end

end
