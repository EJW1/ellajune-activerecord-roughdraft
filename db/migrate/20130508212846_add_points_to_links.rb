class AddPointsToLinks < ActiveRecord::Migration
  def change
    add_column :links, :points, :integer
  end
end
