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

ActiveRecord::Schema.define(version: 20171008101720) do

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "fr"
    t.float "fp"
    t.float "fo"
    t.float "fs"
    t.float "fc"
    t.float "fm"
    t.float "ft"
    t.float "rp"
    t.float "ro"
    t.float "rs"
    t.float "rc"
    t.float "rm"
    t.float "rt"
    t.float "po"
    t.float "ps"
    t.float "pc"
    t.float "pm"
    t.float "pt"
    t.float "os"
    t.float "oc"
    t.float "om"
    t.float "ot"
    t.float "sc"
    t.float "sm"
    t.float "st"
    t.float "cm"
    t.float "ct"
    t.float "mt"
    t.float "f_weight"
    t.float "r_weight"
    t.float "p_weight"
    t.float "o_weight"
    t.float "s_weight"
    t.float "c_weight"
    t.float "m_weight"
    t.float "t_weight"
  end

end
