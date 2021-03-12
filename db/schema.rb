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

ActiveRecord::Schema.define(version: 2021_03_09_161348) do

  create_table "bank_accounts", force: :cascade do |t|
    t.integer "balance"
    t.integer "user_id"
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
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "credit_score"
  end

end
