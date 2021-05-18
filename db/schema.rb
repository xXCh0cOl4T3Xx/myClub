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

ActiveRecord::Schema.define(version: 2021_05_18_024502) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.string "district"
    t.string "city"
    t.string "state"
    t.string "cep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string "bank"
    t.integer "account_type"
    t.string "account"
    t.string "agency"
    t.decimal "Balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deposits", force: :cascade do |t|
    t.decimal "value"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.date "year"
    t.string "uf"
    t.string "number"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.date "data_found"
    t.integer "director_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["director_id"], name: "index_factions_on_director_id"
  end

  create_table "family_members", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "member_reference_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_reference_id"], name: "index_family_members_on_member_reference_id"
    t.index ["user_id"], name: "index_family_members_on_user_id"
  end

  create_table "godfathers", force: :cascade do |t|
    t.integer "godfather_id", null: false
    t.integer "goddaughter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["goddaughter_id"], name: "index_godfathers_on_goddaughter_id"
    t.index ["godfather_id"], name: "index_godfathers_on_godfather_id"
  end

  create_table "monthlies", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "year"
    t.integer "month"
    t.text "notes"
    t.integer "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_monthlies_on_user_id"
  end

  create_table "motorcycles", force: :cascade do |t|
    t.string "name"
    t.integer "cc"
    t.string "brand"
    t.string "plate"
    t.string "color"
    t.date "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "removals", force: :cascade do |t|
    t.decimal "value"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.integer "position"
    t.integer "status"
    t.date "year"
    t.date "marital"
    t.string "phone"
    t.string "emergency_phone"
    t.date "date_add"
    t.date "date_baptized"
    t.string "occupation"
    t.string "function"
    t.text "notes"
    t.date "birth"
    t.string "cpf"
    t.string "photo"
    t.integer "faction_id", null: false
    t.integer "godfather_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["faction_id"], name: "index_users_on_faction_id"
    t.index ["godfather_id"], name: "index_users_on_godfather_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "factions", "directors"
  add_foreign_key "family_members", "member_references"
  add_foreign_key "family_members", "users"
  add_foreign_key "godfathers", "goddaughters"
  add_foreign_key "godfathers", "godfathers"
  add_foreign_key "monthlies", "users"
  add_foreign_key "users", "factions"
  add_foreign_key "users", "godfathers"
end
