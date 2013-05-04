class AddInterestsTagIdToInterestsTaggings < ActiveRecord::Migration
  def change
    add_column :interests_taggings, :interests_tag_id, :integer
  end
end
