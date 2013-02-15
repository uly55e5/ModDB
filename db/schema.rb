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

ActiveRecord::Schema.define(:version => 20130201125932) do

  create_table "proteins", :force => true do |t|
    t.string "name"
    t.text   "sequence"
    t.string "organism"
  end

  create_table "uniprots", :force => true do |t|
    t.string  "uniprot_ac", :limit => 11, :null => false
    t.integer "protein_id",               :null => false
  end

  add_index "uniprots", ["protein_id"], :name => "uniprots_protein_id_fk"

  add_foreign_key "uniprots", "proteins", :name => "uniprots_protein_id_fk"

end
