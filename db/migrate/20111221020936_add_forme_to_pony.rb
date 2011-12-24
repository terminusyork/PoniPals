class AddFormeToPony < ActiveRecord::Migration
  def change
    add_column :ponies, :forme, :integer
  end
end
