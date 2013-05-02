module ApplicationHelper
  def interests_tag_cloud(interests_tags, classes)
    max = interests_tags.sort_by(&:count).last
    interests_tags.each do |interests_tag|
      index = interests_tag.count.to_f / max.count * (classes.size - 1)
      yield(interests_tag, classes[index.round])
    end
  end
end
