class UserProfile < ActiveRecord::Base
   attr_accessible :name, :location, :birth_date, :user_id
   belongs_to :user
   validates_presence_of :user
end
