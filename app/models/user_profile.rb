class UserProfile < ActiveRecord::Base
   attr_accessible :name, :location, :birth_date, :user_id, :website, :interests_tag_list
   belongs_to :user
   has_many :interests_taggings
   has_many :interests_tags, through: :interests_taggings

  def self.tagged_with(name)
    InterestsTag.find_by_name!(name).user_profiles
  end

  def self.tag_counts
    InterestsTag.select("tags.*, count(interests_taggings.interests_tag_id) as count").
      joins(:interests_taggings).group("interests_taggings.interests_tag_id")
  end
  
  def interests_tag_list
    interests_tags.map(&:name).join(", ")
  end
  
  def interests_tag_list=(names)
    self.interests_tags = names.split(",").map do |n|
      InterestsTag.where(name: n.strip).first_or_create!
    end
  end
end
