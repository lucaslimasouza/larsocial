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

ActiveRecord::Schema.define(version: 20140110011321) do

  create_table "apartments", force: true do |t|
    t.string   "designation_building"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dweller_id"
    t.integer  "condominium_id"
  end

  add_index "apartments", ["condominium_id"], name: "index_apartments_on_condominium_id"
  add_index "apartments", ["dweller_id"], name: "index_apartments_on_dweller_id"

  create_table "condominia", force: true do |t|
    t.string   "address"
    t.string   "number"
    t.string   "zip_code"
    t.integer  "building"
    t.string   "designation_building"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "syndic_id"
    t.string   "key"
    t.string   "name"
  end

  add_index "condominia", ["syndic_id"], name: "index_condominia_on_syndic_id"

  create_table "dwellers", force: true do |t|
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
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dwellers", ["email"], name: "index_dwellers_on_email", unique: true
  add_index "dwellers", ["reset_password_token"], name: "index_dwellers_on_reset_password_token", unique: true

  create_table "syndics", force: true do |t|
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
    t.string   "name"
    t.string   "phone"
    t.string   "cpf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "syndics", ["email"], name: "index_syndics_on_email", unique: true
  add_index "syndics", ["reset_password_token"], name: "index_syndics_on_reset_password_token", unique: true

end
