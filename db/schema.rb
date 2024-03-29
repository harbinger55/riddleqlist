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

ActiveRecord::Schema.define(:version => 20130413075214) do

  create_table "bosses", :force => true do |t|
    t.text     "name"
    t.integer  "raid_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bosses", ["raid_id"], :name => "index_bosses_on_raid_id"

  create_table "character_bosses", :force => true do |t|
    t.integer  "character_id"
    t.integer  "boss_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "character_bosses", ["boss_id"], :name => "index_character_bosses_on_boss_id"
  add_index "character_bosses", ["character_id"], :name => "index_character_bosses_on_character_id"

  create_table "character_roles", :force => true do |t|
    t.integer  "character_id"
    t.integer  "role_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "characters", :force => true do |t|
    t.text     "name"
    t.integer  "id_bnet"
    t.integer  "spec_id"
    t.integer  "primary_talent_id"
    t.integer  "secondary_talent_id"
    t.integer  "guild_id"
    t.integer  "race_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.text     "notes"
    t.integer  "rating"
    t.integer  "level"
  end

  add_index "characters", ["guild_id"], :name => "index_characters_on_guid_id"
  add_index "characters", ["id_bnet"], :name => "index_characters_on_id_bnet"
  add_index "characters", ["primary_talent_id"], :name => "index_characters_on_primary_talent_id"
  add_index "characters", ["race_id"], :name => "index_characters_on_race_id"
  add_index "characters", ["secondary_talent_id"], :name => "index_characters_on_secondary_talent_id"
  add_index "characters", ["spec_id"], :name => "index_characters_on_spec_id"

  create_table "characters_bosses", :force => true do |t|
    t.integer  "character_id"
    t.integer  "boss_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "characters_bosses", ["boss_id"], :name => "index_characters_bosses_on_boss_id"
  add_index "characters_bosses", ["character_id"], :name => "index_characters_bosses_on_character_id"

  create_table "characters_roles", :id => false, :force => true do |t|
    t.integer "character_id"
    t.integer "role_id"
  end

  add_index "characters_roles", ["character_id"], :name => "index_characters_roles_on_character_id"
  add_index "characters_roles", ["role_id"], :name => "index_characters_roles_on_role_id"

  create_table "difficulties", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expansions", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "guilds", :force => true do |t|
    t.integer  "id_bnet"
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "professions", :force => true do |t|
    t.integer  "id_bnet"
    t.text     "name"
    t.integer  "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.integer  "id_bnet"
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "raids", :force => true do |t|
    t.text     "name"
    t.integer  "level"
    t.integer  "location_id"
    t.integer  "expansion_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "raids", ["location_id"], :name => "index_raids_on_location_id"

  create_table "roles", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specs", :force => true do |t|
    t.integer  "id_bnet"
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "talents", :force => true do |t|
    t.integer  "id_bnet"
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "spec_id"
  end

end
