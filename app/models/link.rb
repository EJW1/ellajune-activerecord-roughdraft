class Link < ActiveRecord::Base
  attr_accessible :url, :user_id, :title, :link_tag_list
  belongs_to :user
  has_many :comments
  has_many :votes
  has_many :link_taggings
  has_many :link_tags, through: :link_taggings

  def self.tagged_with(name)
    LinkTag.find_by_name!(name).links
  end

  def self.tag_counts
    LinkTag.select("tags.*, count(link_taggings.link_tag_id) as count").
      joins(:link_taggings).group("link_taggings.link_tag_id")
  end
  
  def link_tag_list
    link_tags.map(&:name).join(", ")
  end
  
  def link_tag_list=(names)
    self.link_tags = names.split(",").map do |n|
      LinkTag.where(name: n.strip).first_or_create!
    end
  end
end
