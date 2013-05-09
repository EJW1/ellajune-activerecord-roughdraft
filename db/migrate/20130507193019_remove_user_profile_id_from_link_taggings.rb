class RemoveUserProfileIdFromLinkTaggings < ActiveRecord::Migration
  def change
    remove_column :link_taggings, :user_profile_id
  end
end
