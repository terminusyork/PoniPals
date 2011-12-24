class AddLvlToPony < ActiveRecord::Migration
  def change
    add_column :ponies, :lvl, :integer
  end
end
