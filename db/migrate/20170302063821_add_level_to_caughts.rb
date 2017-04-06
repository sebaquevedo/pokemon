class AddLevelToCaughts < ActiveRecord::Migration[5.0]
  def change
    add_column :caughts, :level, :integer, default: 1
  end
end
