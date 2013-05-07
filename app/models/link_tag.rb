class LinkTag < ActiveRecord::Base
  attr_accessible :name
  has_many :link_taggings
  has_many :links, through: :link_taggings
end
