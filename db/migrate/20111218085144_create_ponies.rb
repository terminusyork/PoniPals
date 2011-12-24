class CreatePonies < ActiveRecord::Migration
  def change
    create_table :ponies do |t|
      t.string :name
      t.boolean :female
      t.integer :color
      t.integer :species
      t.integer :atk
      t.integer :def
      t.integer :spd
      t.integer :intel
      t.references :user

      t.timestamps
    end
    add_index :ponies, :user_id
  end
end
