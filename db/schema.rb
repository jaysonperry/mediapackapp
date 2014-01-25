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

ActiveRecord::Schema.define(version: 20140124235402) do

  create_table "fact_sheets", force: true do |t|
    t.string   "vanity_url"
    t.string   "description"
    t.string   "country"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "p_k_a"
    t.string   "professional_business_type"
    t.string   "client_tel_mobile"
    t.string   "client_tel_work"
    t.string   "client_tel_alt"
    t.string   "client_email_alt"
    t.string   "client_url"
    t.string   "client_street_address_1"
    t.string   "client_street_address_2"
    t.string   "client_unit_number"
    t.string   "client_city"
    t.string   "client_county"
    t.string   "client_state"
    t.string   "client_postal_code"
    t.string   "company_name"
    t.string   "company_tel_main"
    t.string   "company_url"
    t.string   "company_email"
    t.string   "company_street_address_1"
    t.string   "company_street_address_2"
    t.string   "company_suite_number"
    t.string   "company_city"
    t.string   "company_county"
    t.string   "company_state"
    t.string   "company_postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reg_code"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
