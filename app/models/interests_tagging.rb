class InterestsTagging < ActiveRecord::Base
  belongs_to :interests_tag
  belongs_to :user_profile
  # attr_accessible :title, :body
end
