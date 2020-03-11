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

ActiveRecord::Schema.define(version: 2020_02_16_004819) do

  create_table "cardlists", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "card_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.string "archetype"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "tournament_id"
    t.integer "winner_id"
    t.integer "loser_id"
    t.string "round"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "ign"
    t.float "elo"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "player_id"
    t.integer "deck_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.string "format"
    t.datetime "date"
  end

end
