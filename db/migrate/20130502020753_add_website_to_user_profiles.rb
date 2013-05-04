class AddWebsiteToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :website, :string
  end
end
