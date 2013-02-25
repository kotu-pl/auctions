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

ActiveRecord::Schema.define(:version => 20130224174642) do

  create_table "auction_types", :force => true do |t|
    t.string  "name"
    t.integer "weight", :default => 1
  end

  add_index "auction_types", ["weight"], :name => "index_auction_types_on_weight"

  create_table "auctions", :force => true do |t|
    t.string   "name"
    t.datetime "end_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "auction_type_id"
  end

  add_index "auctions", ["auction_type_id"], :name => "index_auctions_on_auction_type_id"

end
