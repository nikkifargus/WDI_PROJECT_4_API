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

ActiveRecord::Schema.define(version: 20170903141632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.time "time"
    t.date "date"
    t.bigint "genre_id"
    t.bigint "teacher_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_lessons_on_genre_id"
    t.index ["location_id"], name: "index_lessons_on_location_id"
    t.index ["teacher_id"], name: "index_lessons_on_teacher_id"
  end

  create_table "lessons_users", id: false, force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lat"
    t.float "long"
  end

  create_table "posts", force: :cascade do |t|
    t.text "body"
    t.bigint "lesson_id"
    t.bigint "teacher_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_posts_on_lesson_id"
    t.index ["teacher_id"], name: "index_posts_on_teacher_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.text "description"
    t.text "image"
    t.string "admin"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lessons", "genres"
  add_foreign_key "lessons", "locations"
  add_foreign_key "lessons", "teachers"
  add_foreign_key "posts", "lessons"
  add_foreign_key "posts", "teachers"
  add_foreign_key "posts", "users"
end
