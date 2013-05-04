class InterestsTag < ActiveRecord::Base
  attr_accessible :name
  has_many :interests_taggings
  has_many :user_profiles, through: :interests_taggings
end
