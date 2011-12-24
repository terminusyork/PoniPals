class AddHealthToPony < ActiveRecord::Migration
  def change
    add_column :ponies, :health, :integer
  end
end
