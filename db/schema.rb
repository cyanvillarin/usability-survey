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

ActiveRecord::Schema.define(version: 20180126071926) do

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "ar_l"
    t.float "ar_o"
    t.float "ar_uep"
    t.float "ar_uia"
    t.float "ar_a"
    t.float "l_o"
    t.float "l_uep"
    t.float "l_uia"
    t.float "l_a"
    t.float "o_uep"
    t.float "o_uia"
    t.float "o_a"
    t.float "uep_uia"
    t.float "uep_a"
    t.float "uia_a"
    t.float "f_weight"
    t.float "r_weight"
    t.float "p_weight"
    t.float "o_weight"
    t.float "s_weight"
    t.float "c_weight"
  end

end
