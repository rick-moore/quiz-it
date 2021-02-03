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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20210128070813) do

  create_table "answers", force: :cascade do |t|
    t.string  "content"
    t.boolean "correct"
    t.integer "order"
    t.integer "question_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "questions", force: :cascade do |t|
    t.string  "content"
    t.string  "kind"
    t.integer "order"
    t.integer "limit"
    t.integer "quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.date    "date_created"
    t.boolean "public"
    t.integer "category_id"
    t.integer "author_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "user_id"
    t.integer "quiz_id"
    t.integer "score"
    t.date    "date"
  end

  create_table "user_accesses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "quiz_id"
    t.boolean "admin"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end