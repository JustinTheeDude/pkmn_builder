class DeckCard < ApplicationRecord
  belongs_to :deck
  belongs_to :pokemon_card
end
