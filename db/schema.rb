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

ActiveRecord::Schema.define(version: 2021_04_15_023007) do

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.integer "position"
    t.integer "status"
    t.date "year"
    t.date "marital"
    t.string "phone"
    t.string "emergency_phone"
    t.string "email"
    t.date "date_add"
    t.date "date_baptized"
    t.string "occupation"
    t.string "function"
    t.text "notes"
    t.date "birth"
    t.string "cpf"
    t.string "photo"
    t.integer "faction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faction_id"], name: "index_users_on_faction_id"
  end

  add_foreign_key "users", "factions"
end
