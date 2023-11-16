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

ActiveRecord::Schema[7.0].define(version: 2023_11_16_022907) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "move_requirements", force: :cascade do |t|
    t.bigint "move_id", null: false
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["move_id"], name: "index_move_requirements_on_move_id"
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.string "fighter_or_fight"
    t.integer "quantity"
    t.text "description"
    t.bigint "weapon_id", null: false
    t.string "image_url"
    t.string "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weapon_id"], name: "index_moves_on_weapon_id"
  end

  create_table "selected_moves", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "move_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["move_id"], name: "index_selected_moves_on_move_id"
    t.index ["user_id"], name: "index_selected_moves_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "bio"
    t.string "password_digest"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "move_requirements", "moves"
  add_foreign_key "moves", "weapons"
  add_foreign_key "selected_moves", "moves"
  add_foreign_key "selected_moves", "users"
end
