class CreatePokemonCards < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_cards do |t|
      t.string :name
      t.integer :hp

      t.timestamps
    end
  end
end
