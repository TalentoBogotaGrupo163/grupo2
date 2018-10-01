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

ActiveRecord::Schema.define(version: 2018_09_27_014928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.integer "id_city"
    t.string "name"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_cities_on_department_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_companies_on_location_id"
  end

  create_table "companies_phones", id: false, force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "phone_id", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.integer "id_department"
    t.string "name"
    t.string "initial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "document_type_id"
    t.string "name"
    t.string "route"
    t.bigint "state_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_documents_on_company_id"
    t.index ["document_type_id"], name: "index_documents_on_document_type_id"
    t.index ["state_id"], name: "index_documents_on_state_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "state_id"
    t.date "date_initial"
    t.date "date_end"
    t.time "hour_initial"
    t.time "hour_end"
    t.bigint "venue_id"
    t.string "value"
    t.string "organizer"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_events_on_company_id"
    t.index ["state_id"], name: "index_events_on_state_id"
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "mayor_name"
    t.bigint "id_number"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "position_id"
    t.string "name"
    t.bigint "id_number"
    t.date "date_initial"
    t.date "date_end"
    t.string "email"
    t.bigint "company_id"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_members_on_company_id"
    t.index ["position_id"], name: "index_members_on_position_id"
    t.index ["state_id"], name: "index_members_on_state_id"
  end

  create_table "members_phones", id: false, force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "phone_id", null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_networks_on_company_id"
  end

  create_table "notices", force: :cascade do |t|
    t.string "tittle"
    t.string "body"
    t.string "image"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.integer "type_phone"
    t.bigint "number"
    t.integer "company"
    t.integer "user"
    t.integer "venue"
    t.integer "member"
    t.integer "police_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones_police_areas", id: false, force: :cascade do |t|
    t.bigint "police_area_id", null: false
    t.bigint "phone_id", null: false
  end

  create_table "phones_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "phone_id", null: false
  end

  create_table "phones_venues", id: false, force: :cascade do |t|
    t.bigint "venue_id", null: false
    t.bigint "phone_id", null: false
  end

  create_table "police_areas", force: :cascade do |t|
    t.string "area_name"
    t.integer "id_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_police_areas_on_company_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.bigint "role_id"
    t.string "user"
    t.bigint "state_id"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["state_id"], name: "index_users_on_state_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "departments"
  add_foreign_key "companies", "locations"
  add_foreign_key "documents", "companies"
  add_foreign_key "documents", "document_types"
  add_foreign_key "documents", "states"
  add_foreign_key "events", "companies"
  add_foreign_key "events", "states"
  add_foreign_key "events", "venues"
  add_foreign_key "locations", "cities"
  add_foreign_key "members", "companies"
  add_foreign_key "members", "positions"
  add_foreign_key "members", "states"
  add_foreign_key "networks", "companies"
  add_foreign_key "police_areas", "companies"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "states"
end
