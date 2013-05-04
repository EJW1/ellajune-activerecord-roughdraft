class CreateInterestsTaggings < ActiveRecord::Migration
  def change
    create_table :interests_taggings do |t|
      t.belongs_to :tag
      t.belongs_to :user_profile

      t.timestamps
    end
    add_index :interests_taggings, :tag_id
    add_index :interests_taggings, :user_profile_id
  end
end
