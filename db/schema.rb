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

ActiveRecord::Schema.define(version: 20151214222558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.string   "title"
    t.string   "internal_number"
    t.string   "case_number"
    t.date     "filed"
    t.string   "jurisdiction"
    t.string   "law_type"
    t.string   "case_status"
    t.text     "summary"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.string   "contact1"
    t.string   "contact2"
    t.text     "role"
    t.text     "profile"
    t.string   "image"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "company"
    t.string   "title"
    t.date     "time_in_field"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.string   "phone2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.text     "bio"
    t.string   "image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "firms", force: :cascade do |t|
    t.string   "name"
    t.text     "profile"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "fax"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "practice_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "handlings", force: :cascade do |t|
    t.integer  "case_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representations", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "case_id"
    t.integer  "firm_id"
    t.string   "attorney"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "used_experts", force: :cascade do |t|
    t.integer  "case_id"
    t.integer  "expert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
