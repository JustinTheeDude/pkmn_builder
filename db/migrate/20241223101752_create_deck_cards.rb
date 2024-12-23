class CreateDeckCards < ActiveRecord::Migration[8.0]
  def change
    create_table :deck_cards do |t|
      t.references :deck, null: false, foreign_key: true
      t.references :pokemon_card, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
