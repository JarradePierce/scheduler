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

ActiveRecord::Schema[7.1].define(version: 2024_11_18_212823) do
  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.string "date_attained"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.string "day_name"
    t.string "abbreviation"
    t.string "day_date"
    t.boolean "is_weekend"
    t.integer "day_position"
    t.integer "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["week_id"], name: "index_days_on_week_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "tactician_id", null: false
    t.integer "day_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_schedules_on_day_id"
    t.index ["tactician_id"], name: "index_schedules_on_tactician_id"
  end

  create_table "tactician_badges", force: :cascade do |t|
    t.integer "tactician_id", null: false
    t.integer "badge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["badge_id"], name: "index_tactician_badges_on_badge_id"
    t.index ["tactician_id"], name: "index_tactician_badges_on_tactician_id"
  end

  create_table "tacticians", force: :cascade do |t|
    t.string "name"
    t.string "contact_info"
    t.boolean "is_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "schedules", "days"
  add_foreign_key "schedules", "tacticians"
  add_foreign_key "tactician_badges", "badges"
  add_foreign_key "tactician_badges", "tacticians"
end
