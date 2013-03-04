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

ActiveRecord::Schema.define(:version => 0) do

  create_table "boats_info", :primary_key => "ID", :force => true do |t|
    t.string  "SITE_ID"
    t.string  "SITE_URL"
    t.string  "ID_MD5",           :limit => 32
    t.string  "NAME"
    t.float   "PRICE_GBP"
    t.float   "PRICE_EUR"
    t.float   "PRICE_LISTED"
    t.string  "PRICE_LISTED_CCY", :limit => 20
    t.text    "DESC_FULL"
    t.text    "DESC_CLEAN"
    t.string  "LOCATION"
    t.string  "SELLER_NAME"
    t.string  "SELLER_ADDRESS"
    t.string  "SELLER_PHONE"
    t.string  "PUBLISH_URL"
    t.string  "F_CATEGORY",       :limit => 50
    t.string  "F_MODEL",          :limit => 50
    t.string  "F_LENGTH",         :limit => 50
    t.float   "F_LENGTH_M",       :limit => 11
    t.string  "F_DRAFT",          :limit => 50
    t.float   "F_DRAFT_M",        :limit => 11
    t.string  "F_MOTOR_BRAND",    :limit => 50
    t.string  "F_BRAND",          :limit => 50
    t.string  "F_YEAR_BUILT",     :limit => 50
    t.string  "F_BEAM",           :limit => 50
    t.float   "F_BEAM_M",         :limit => 11
    t.string  "F_TYPE",           :limit => 50
    t.string  "F_FUEL",           :limit => 50
    t.string  "F_SLEEPING",       :limit => 50
    t.string  "F_TYPE_KEEL",      :limit => 50
    t.string  "F_HULL",           :limit => 50
    t.string  "EXTRA",            :limit => 2048
    t.integer "PHOTOS_COUNT"
    t.string  "PHOTOS_URLS",      :limit => 2048
  end

  add_index "boats_info", ["ID_MD5"], :name => "ID_MD5", :unique => true
  add_index "boats_info", ["SITE_ID"], :name => "SITE_ID", :unique => true
  add_index "boats_info", ["SITE_URL"], :name => "SITE_URL", :unique => true

end
