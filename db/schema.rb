# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150319184126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budget_groups", force: true do |t|
  end

  create_table "budget_items", force: true do |t|
    t.integer "budget_id"
    t.integer "budget_group_id"
    t.text    "name"
    t.decimal "planned"
  end

  create_table "budgets", force: true do |t|
    t.integer  "plan_id"
    t.date     "start_on"
    t.date     "end_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "envelopes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incomes", force: true do |t|
    t.text    "name"
    t.integer "budget_id"
    t.decimal "planed_amount"
    t.date    "planed_date"
  end

  create_table "plans", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
