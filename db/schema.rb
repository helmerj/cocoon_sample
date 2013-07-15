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

ActiveRecord::Schema.define(version: 20130715124400) do

  create_table "contact_mechanism_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_mechanisms", force: true do |t|
    t.integer  "contact_mechanism_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "electronic_addresses", force: true do |t|
    t.string   "electronic_address_string"
    t.integer  "contact_mechanism_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "party_contact_mechanisms", force: true do |t|
    t.integer  "party_role_type_id"
    t.integer  "party_id"
    t.integer  "contact_mechanism_id"
    t.integer  "party_contact_mechanism_seq_id"
    t.date     "from_date"
    t.date     "thru_date"
    t.boolean  "non_solicitation_ind"
    t.string   "extension"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "party_role_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
