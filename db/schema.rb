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

ActiveRecord::Schema[7.0].define(version: 2023_08_30_101224) do
  create_table "notes", force: :cascade do |t|
    t.integer "tune_id", null: false
    t.integer "user_id", null: false
    t.string "key", null: false
    t.string "memo"
    t.string "abc", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "scale", null: false
    t.index ["tune_id"], name: "index_notes_on_tune_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "picks", force: :cascade do |t|
    t.integer "note_id", null: false
    t.integer "playlist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["note_id"], name: "index_picks_on_note_id"
    t.index ["playlist_id"], name: "index_picks_on_playlist_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name", null: false
    t.integer "user_id", null: false
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "tunes", force: :cascade do |t|
    t.string "name", null: false
    t.string "alt_name"
    t.string "rhythm", null: false
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "pref", null: false
    t.string "date", null: false
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.string "user_id", null: false
  end

end
