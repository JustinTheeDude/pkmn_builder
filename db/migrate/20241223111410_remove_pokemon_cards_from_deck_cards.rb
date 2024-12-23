class RemovePokemonCardsFromDeckCards < ActiveRecord::Migration[8.0]
  def change
    remove_reference :deck_cards, :pokemon_cards, null: false, foreign_key: true
  end
end
