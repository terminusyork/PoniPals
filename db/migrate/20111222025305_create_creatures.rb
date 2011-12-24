class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.integer :idn
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
