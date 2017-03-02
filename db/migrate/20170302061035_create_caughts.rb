class CreateCaughts < ActiveRecord::Migration[5.0]
  def change
    create_table :caughts do |t|
      t.references :user, foreign_key: true
      t.references :pokemon, foreign_key: true

      t.timestamps
    end
  end
end
