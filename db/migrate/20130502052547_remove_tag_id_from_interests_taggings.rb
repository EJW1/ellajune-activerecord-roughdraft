class RemoveTagIdFromInterestsTaggings < ActiveRecord::Migration
  def change
    remove_column :interests_taggings, :tag_id
  end
end
