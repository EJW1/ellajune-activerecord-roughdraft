class AddIndexToInterestsTaggings < ActiveRecord::Migration
  def change
    add_index :interests_taggings, :interests_tag_id
  end
end
