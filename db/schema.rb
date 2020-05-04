# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_04_175901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "patients", force: :cascade do |t|
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employment_status"
    t.integer "construction"
    t.integer "delivering_to_home"
    t.integer "food_retail"
    t.integer "healthcare"
    t.integer "logistic"
    t.integer "manufacturing"
    t.integer "policing_or_prison"
    t.integer "public_transport"
    t.integer "school"
    t.integer "social_care"
    t.integer "not_working"
    t.integer "arthritis"
    t.integer "asthma"
    t.integer "cancer"
    t.integer "cystic_fibrosis"
    t.integer "chronic_obstructive_pulmonary_disease"
    t.integer "diabetes"
    t.integer "epilepsy"
    t.integer "heart_disease"
    t.integer "high_blood_pressure"
    t.integer "high_cholesterol"
    t.integer "hiv"
    t.integer "mental_health_condition"
    t.integer "multiple_scierosis"
    t.integer "none"
    t.integer "gender"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
