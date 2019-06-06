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

ActiveRecord::Schema.define(version: 2019_06_05_161758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id"
    t.string "content"
    t.boolean "correct", default: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "games", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "code"
    t.string "current_step"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "plays", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "user_id"
    t.integer "score", default: 0
    t.boolean "eliminated", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_plays_on_game_id"
    t.index ["user_id"], name: "index_plays_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "game_id"
    t.string "content"
    t.string "kind"
    t.string "step"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "played", default: false
    t.index ["game_id"], name: "index_questions_on_game_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.bigint "answer_id"
    t.bigint "play_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_user_answers_on_answer_id"
    t.index ["play_id"], name: "index_user_answers_on_play_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pseudo"
    t.integer "age"
    t.boolean "coliving"
    t.string "country"
    t.string "avatar"
    t.integer "waterprint"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "games", "users"
  add_foreign_key "plays", "games"
  add_foreign_key "plays", "users"
  add_foreign_key "questions", "games"
  add_foreign_key "user_answers", "answers"
  add_foreign_key "user_answers", "plays"
end
