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

ActiveRecord::Schema.define(version: 2021_03_09_161348) do

  create_table "bank_accounts", force: :cascade do |t|
    t.integer "balance"
  end

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.integer "price"
  end

  create_table "dealerships", force: :cascade do |t|
    t.string "brand"
  end

  create_table "loans", force: :cascade do |t|
    t.integer "user_id"
    t.integer "car_id"
    t.integer "dealership_id"
    t.integer "bank_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
