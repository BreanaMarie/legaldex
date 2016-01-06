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

ActiveRecord::Schema.define(version: 20160105233350) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "lawcase_id",  limit: 4
    t.integer  "practice_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "industry",   limit: 255
    t.string   "contact1",   limit: 255
    t.string   "contact2",   limit: 255
    t.text     "role",       limit: 65535
    t.text     "profile",    limit: 65535
    t.string   "image",      limit: 255
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zipcode",    limit: 255
    t.string   "phone",      limit: 255
    t.string   "fax",        limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "experts", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "company",       limit: 255
    t.string   "title",         limit: 255
    t.date     "time_in_field"
    t.string   "email",         limit: 255
    t.string   "address",       limit: 255
    t.string   "phone",         limit: 255
    t.string   "phone2",        limit: 255
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.string   "zipcode",       limit: 255
    t.text     "bio",           limit: 65535
    t.string   "image",         limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "firms", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "profile",    limit: 65535
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zipcode",    limit: 255
    t.string   "phone",      limit: 255
    t.string   "fax",        limit: 255
    t.string   "image",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "practice_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "handlings", force: :cascade do |t|
    t.integer  "lawcase_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "lawcases", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.string   "internal_number", limit: 255
    t.string   "case_number",     limit: 255
    t.date     "filed"
    t.string   "jurisdiction",    limit: 255
    t.string   "law_type",        limit: 255
    t.string   "case_status",     limit: 255
    t.text     "summary",         limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "representations", force: :cascade do |t|
    t.integer  "company_id", limit: 4
    t.integer  "lawcase_id", limit: 4
    t.integer  "firm_id",    limit: 4
    t.string   "attorney",   limit: 255
    t.string   "role",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usedexperts", force: :cascade do |t|
    t.integer  "lawcase_id", limit: 4
    t.integer  "expert_id",  limit: 4
    t.integer  "firm_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "image",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
