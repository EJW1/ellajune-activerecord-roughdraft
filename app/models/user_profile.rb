class UserProfile < ActiveRecord::Base
   attr_accessible :name, :location, :birth_date, :user_id
   belongs_to :user
end
