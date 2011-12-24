class AddMoodToPony < ActiveRecord::Migration
  def change
    add_column :ponies, :mood, :integer
  end
end
