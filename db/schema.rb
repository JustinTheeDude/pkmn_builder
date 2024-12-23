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

ActiveRecord::Schema[8.0].define(version: 2024_12_23_111410) do
  create_table "deck_cards", force: :cascade do |t|
    t.integer "deck_id", null: false
    t.integer "pokemon_card_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_deck_cards_on_deck_id"
    t.index ["pokemon_card_id"], name: "index_deck_cards_on_pokemon_card_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "deck_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_decks_on_user_id"
  end

  create_table "pokemon_cards", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "deck_cards", "decks"
  add_foreign_key "deck_cards", "pokemon_cards"
  add_foreign_key "decks", "users"
end
