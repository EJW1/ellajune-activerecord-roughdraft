class Link < ActiveRecord::Base
  attr_accessible :url, :user_id, :title
  belongs_to :user
  has_many :comments
end
