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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111222035320) do

  create_table "creatures", :force => true do |t|
    t.integer  "idn"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "rarity"
  end

  create_table "ponies", :force => true do |t|
    t.string   "name"
    t.boolean  "female"
    t.integer  "color"
    t.integer  "species"
    t.integer  "atk"
    t.integer  "def"
    t.integer  "spd"
    t.integer  "intel"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "health"
    t.integer  "lvl"
    t.integer  "mood"
    t.integer  "forme"
    t.integer  "imageid"
  end

  add_index "ponies", ["user_id"], :name => "index_ponies_on_user_id"

  create_table "sprites", :force => true do |t|
    t.integer  "iid"
    t.integer  "forme"
    t.integer  "color"
    t.integer  "gender"
    t.string   "location"
    t.integer  "creature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sprites", ["creature_id"], :name => "index_sprites_on_creature_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
