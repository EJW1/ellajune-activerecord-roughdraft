class AddIndexToLinkTaggings < ActiveRecord::Migration
  def change
    add_index :link_taggings, :link_id
  end
end
