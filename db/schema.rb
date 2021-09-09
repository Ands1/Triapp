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

ActiveRecord::Schema.define(version: 2021_09_09_185218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quiz_topics", force: :cascade do |t|
    t.string "question1", default: "", null: false
    t.string "question2", default: "", null: false
    t.string "question3", default: "", null: false
    t.string "question4", default: "", null: false
    t.string "question5", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quizzes_id"
    t.index ["quizzes_id"], name: "index_quiz_topics_on_quizzes_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topic_choices", force: :cascade do |t|
    t.boolean "right_choice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quiz_topics_id"
    t.index ["quiz_topics_id"], name: "index_topic_choices_on_quiz_topics_id"
  end

  create_table "user_topic_answers", force: :cascade do |t|
    t.boolean "is_right", null: false
    t.datetime "answer_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.bigint "quiz_topics_id"
    t.bigint "topic_choices_id"
    t.index ["quiz_topics_id"], name: "index_user_topic_answers_on_quiz_topics_id"
    t.index ["topic_choices_id"], name: "index_user_topic_answers_on_topic_choices_id"
    t.index ["users_id"], name: "index_user_topic_answers_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "quiz_topics", "quizzes", column: "quizzes_id"
  add_foreign_key "topic_choices", "quiz_topics", column: "quiz_topics_id"
  add_foreign_key "user_topic_answers", "quiz_topics", column: "quiz_topics_id"
  add_foreign_key "user_topic_answers", "topic_choices", column: "topic_choices_id"
  add_foreign_key "user_topic_answers", "users", column: "users_id"
end
