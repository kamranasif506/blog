# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_20_045722) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comment", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id_id", null: false
    t.bigint "post_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id_id"], name: "index_comment_on_post_id_id"
    t.index ["user_id_id"], name: "index_comment_on_user_id_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id_id", null: false
    t.bigint "post_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id_id"], name: "index_likes_on_post_id_id"
    t.index ["user_id_id"], name: "index_likes_on_user_id_id"
  end

  create_table "post", force: :cascade do |t|
    t.bigint "author_id_id", null: false
    t.string "title"
    t.text "text"
    t.integer "comments_counter", default: 0
    t.integer "Likes_counter", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id_id"], name: "index_post_on_author_id_id"
  end

  create_table "user", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "bio"
    t.integer "posts_counter", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comment", "post", column: "post_id_id"
  add_foreign_key "comment", "user", column: "user_id_id"
  add_foreign_key "likes", "post", column: "post_id_id"
  add_foreign_key "likes", "user", column: "user_id_id"
  add_foreign_key "post", "user", column: "author_id_id"
end
