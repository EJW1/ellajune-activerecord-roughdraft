class CreateLinkTaggings < ActiveRecord::Migration
  def change
    create_table :link_taggings do |t|
      t.belongs_to :link_tag
      t.belongs_to :user_profile

      t.timestamps
    end
    add_index :link_taggings, :link_tag_id
    add_index :link_taggings, :user_profile_id
  end
end
