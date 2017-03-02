class CreateUsersPokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :users_pokemons do |t|
      t.references :user, foreign_key: true
      t.references :pokemon, foreign_key: true

      t.timestamps
    end
  end
end
