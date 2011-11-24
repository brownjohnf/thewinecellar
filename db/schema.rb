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

ActiveRecord::Schema.define(:version => 20111123220511) do

  create_table "bottles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cellar_id"
    t.integer  "offering_id"
    t.integer  "year"
    t.integer  "number"
    t.string   "comment"
    t.integer  "format_id"
  end

  create_table "cellars", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compositions", :force => true do |t|
    t.integer  "grape_id"
    t.integer  "offering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "local_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formats", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "volume"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grapes", :force => true do |t|
    t.string   "scientific_name"
    t.string   "common_name"
    t.integer  "color_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offerings", :force => true do |t|
    t.string   "name"
    t.integer  "producer_id"
    t.integer  "color_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", :force => true do |t|
    t.integer  "user_id"
    t.integer  "cellar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producers", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "bio"
    t.integer  "phone"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
    t.boolean  "moderator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
