class AddRarityToCreature < ActiveRecord::Migration
  def change
    add_column :creatures, :rarity, :string
  end
end
