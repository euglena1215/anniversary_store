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

ActiveRecord::Schema.define(version: 2018_09_06_163008) do

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.integer "status", null: false
    t.text "content"
    t.bigint "writer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["writer_id"], name: "index_comments_on_writer_id"
  end

  create_table "couples", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user1_id", null: false
    t.bigint "user2_id", null: false
    t.datetime "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user1_id"], name: "index_couples_on_user1_id"
    t.index ["user2_id"], name: "index_couples_on_user2_id"
  end

  create_table "evaluations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "rate"
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_evaluations_on_event_id"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "title", null: false
    t.bigint "couple_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["couple_id"], name: "index_events_on_couple_id"
  end

  create_table "impressions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "content"
    t.bigint "from_id", null: false
    t.bigint "to_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", null: false
    t.index ["from_id"], name: "index_impressions_on_from_id"
    t.index ["to_id"], name: "index_impressions_on_to_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users", column: "writer_id"
  add_foreign_key "couples", "users", column: "user1_id"
  add_foreign_key "couples", "users", column: "user2_id"
  add_foreign_key "evaluations", "events"
  add_foreign_key "evaluations", "users"
  add_foreign_key "events", "couples"
  add_foreign_key "impressions", "users", column: "from_id"
  add_foreign_key "impressions", "users", column: "to_id"
end
