class LinkTagging < ActiveRecord::Base
  belongs_to :link_tag
  belongs_to :link
  # attr_accessible :title, :body
end
