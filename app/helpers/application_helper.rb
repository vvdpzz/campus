module ApplicationHelper
  
  def delimitor
    content_tag(:span, ' · ', :class => 'bullet')
  end
  
  def timestamp(obj)
    content_tag(:span, time_ago_in_words(obj.created_at) + '前', :class => 'timestamp')
  end
  
end
