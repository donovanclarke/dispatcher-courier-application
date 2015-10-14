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

ActiveRecord::Schema.define(version: 20151005032315) do

  create_table "clients", force: :cascade do |t|
    t.string   "client_name"
    t.string   "client_email"
    t.string   "client_phone"
    t.string   "client_streetaddress"
    t.string   "client_floor"
    t.string   "client_specialinstructions"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "client_nameid"
  end

  create_table "fees", force: :cascade do |t|
    t.string   "fee_name"
    t.decimal  "fee_price"
    t.string   "fee_category"
    t.string   "fee_notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "job_originaddress"
    t.string   "job_destinationaddress"
    t.string   "job_servicelevel"
    t.string   "job_orderplacer"
    t.string   "job_orderphone"
    t.string   "job_orderemail"
    t.string   "job_billingreference"
    t.string   "job_paymenttype"
    t.datetime "job_datetime"
    t.string   "job_price"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "job_client"
    t.string   "job_oversize"
    t.string   "job_overweight"
    t.string   "job_wait_time"
    t.string   "job_specialinstructions"
    t.string   "job_misc_charges"
  end

  create_table "services", force: :cascade do |t|
    t.string   "service_name"
    t.string   "service_notes"
    t.string   "service_duetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.decimal  "service_baseprice"
    t.integer  "service_nameid"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end