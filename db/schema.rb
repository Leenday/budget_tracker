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

ActiveRecord::Schema[7.0].define(version: 2023_07_04_105026) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actual_expenses", force: :cascade do |t|
    t.string "type"
    t.string "comment"
    t.decimal "amount", precision: 8, scale: 2
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_actual_expenses_on_user_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.string "source"
    t.string "comment"
    t.decimal "amount", precision: 8, scale: 2
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "planned_expenses", force: :cascade do |t|
    t.string "type"
    t.decimal "amount", precision: 8, scale: 2
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_planned_expenses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "login"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "actual_expenses", "users"
  add_foreign_key "incomes", "users"
  add_foreign_key "planned_expenses", "users"
end
