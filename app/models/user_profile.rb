class UserProfile < ActiveRecord::Base
   attr_accessible :name, :location, :birth_date, :user_id, :website
   belongs_to :user
end
