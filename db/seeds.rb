# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

puts "Clearing old data..."
DeckCard.destroy_all
Deck.destroy_all
PokemonCard.destroy_all
User.destroy_all

puts "Creating users..."
ash = User.create!(
  username: "ash_ketchum"
)

misty = User.create!(
  username: "misty_water"
)

puts "Creating decks..."

pokemon_cards = [
  { name: "Pikachu", hp: 60 },
  { name: "Blastoise", hp: 120 },
  { name: "Heatran", hp: 220 }
].map { |card| PokemonCard.create!(card) }

ash_deck = ash.decks.create!(deck_name: "ash deck")
misty_deck = misty.decks.create!(deck_name: "misty deck")

DeckCard.create!([
  { deck: ash_deck, pokemon_card: pokemon_cards[0], quantity: 4 },
  { deck: ash_deck, pokemon_card: pokemon_cards[1], quantity: 2 }
])

DeckCard.create!([
  { deck: misty_deck, pokemon_card: pokemon_cards[2], quantity: 4 },
  { deck: misty_deck, pokemon_card: pokemon_cards[1], quantity: 1 }
])
