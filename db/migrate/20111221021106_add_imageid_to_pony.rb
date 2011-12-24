class AddImageidToPony < ActiveRecord::Migration
  def change
    add_column :ponies, :imageid, :integer
  end
end
