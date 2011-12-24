class AddLocationToCreature < ActiveRecord::Migration
  def change
    add_column :creatures, :location, :string
  end
end
