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

ActiveRecord::Schema.define(version: 20150224174940) do

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: true do |t|
    t.string   "name"
    t.string   "age"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pet_type",    default: 0,           null: false
    t.string   "pet_status",  default: "Available", null: false
  end

  create_table "selected_pets", force: true do |t|
    t.integer  "pet_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "selected_pets", ["cart_id"], name: "index_selected_pets_on_cart_id"
  add_index "selected_pets", ["pet_id"], name: "index_selected_pets_on_pet_id"

end
