# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 7) do

  create_table "cardlists", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "card_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.string "archetype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "tournament_id"
    t.integer "winner_id"
    t.integer "loser_id"
    t.float "elo_delta"
    t.string "round"
    t.float "format_elo_delta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "ign"
    t.integer "wins", default: 0
    t.integer "losses", default: 0
    t.float "win_percentage", default: 50.0
    t.float "elo", default: 1600.0
    t.float "max_elo", default: 1600.0
    t.float "dark_draft_elo", default: 1600.0
    t.float "max_dark_draft_elo", default: 1600.0
    t.float "constructed_elo", default: 1600.0
    t.float "max_constructed_elo", default: 1600.0
    t.integer "num_tournaments", default: 0
    t.integer "tournament_wins", default: 0
    t.integer "top_8s", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "player_id"
    t.integer "deck_id", default: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.string "format"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
