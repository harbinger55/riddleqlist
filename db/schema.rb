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

ActiveRecord::Schema.define(:version => 20130309232549) do

  create_table "characters", :force => true do |t|
    t.text     "name"
    t.integer  "spec_id"
    t.integer  "primary_talent_id"
    t.integer  "secondary_talent_id"
    t.integer  "guild_id"
    t.integer  "race_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.text     "notes"
    t.integer  "rating"
  end

  add_index "characters", ["guild_id"], :name => "index_characters_on_guid_id"
  add_index "characters", ["primary_talent_id"], :name => "index_characters_on_primary_talent_id"
  add_index "characters", ["race_id"], :name => "index_characters_on_race_id"
  add_index "characters", ["secondary_talent_id"], :name => "index_characters_on_secondary_talent_id"
  add_index "characters", ["spec_id"], :name => "index_characters_on_spec_id"

  create_table "guilds", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "professions", :force => true do |t|
    t.text     "name"
    t.integer  "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specs", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "talents", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "spec_id"
  end

end
