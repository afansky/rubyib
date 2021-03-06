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

ActiveRecord::Schema.define(:version => 20120711133946) do

  create_table "board_threads", :force => true do |t|
    t.integer "board_id"
  end

  create_table "boards", :force => true do |t|
    t.string "name"
  end

  create_table "posts", :force => true do |t|
    t.integer  "board_thread_id"
    t.string   "name"
    t.string   "email"
    t.string   "topic"
    t.text     "text"
    t.datetime "creation_date"
    t.integer  "post_number"
  end

end
