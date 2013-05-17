module ApplicationHelper

  def interests_tag_cloud(interests_tags, classes)
    max = 0
    interests_tags.each do |t|
      if t.count.to_i > max
        max = t.count.to_i
      end 
    end
    interests_tags.each do |interests_tag|
      index = interests_tag.count.to_f / max * (classes.size - 1)
      yield(interests_tag, classes[index.round])
    end
  end 

  def link_tag_cloud(link_tags, classes)
    max = 0
    link_tags.each do |t|
      if t.count.to_i > max
        max = t.count.to_i
      end 
    end
    link_tags.each do |link_tag|
      index = link_tag.count.to_f / max * (classes.size - 1)
      yield(link_tag, classes[index.round])
    end
  end 
end