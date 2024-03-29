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

ActiveRecord::Schema.define(:version => 20120512071245) do

  create_table "order_details", :force => true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "unit_price"
    t.integer  "quantity"
    t.string   "product_name"
    t.string   "product_unit"
    t.string   "product_type_number"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "account_id"
    t.string   "order_code"
    t.string   "delivery_place"
    t.date     "delivering_at"
    t.string   "customer_name"
    t.string   "company_name"
    t.string   "company_location"
    t.string   "company_zip_code"
    t.string   "company_phone"
    t.string   "company_fax"
    t.text     "note"
    t.datetime "ordered_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "unit"
    t.string   "type_number"
    t.integer  "unit_price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
