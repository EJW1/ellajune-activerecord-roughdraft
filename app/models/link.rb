class Link < ActiveRecord::Base
  attr_accessible :url, :user_id, :title
  belongs_to :user
end
