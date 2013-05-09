class AddLinkIdIndexToLinkTaggings < ActiveRecord::Migration
  def change
    add_column :link_taggings, :link_id, :integer
  end
end
