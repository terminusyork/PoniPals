class CreateSprites < ActiveRecord::Migration
  def change
    create_table :sprites do |t|
      t.integer :iid
      t.integer :forme
      t.integer :color
      t.integer :gender
      t.string :location
      t.references :creature

      t.timestamps
    end
    add_index :sprites, :creature_id
  end
end
