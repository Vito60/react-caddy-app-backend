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

ActiveRecord::Schema.define(version: 2020_04_14_183227) do

  create_table "clubs", force: :cascade do |t|
    t.string "club_type"
    t.string "brand"
    t.string "model"
    t.string "loft"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pro_clubs", force: :cascade do |t|
    t.integer "pro_id", null: false
    t.integer "club_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["club_id"], name: "index_pro_clubs_on_club_id"
    t.index ["pro_id"], name: "index_pro_clubs_on_pro_id"
  end

  create_table "pros", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "hometown"
    t.string "home_state"
    t.string "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pro_clubs", "clubs"
  add_foreign_key "pro_clubs", "pros"
end
