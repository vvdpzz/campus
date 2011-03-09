module ApplicationHelper
  
  def delimitor
    content_tag(:span, ' · ', :class => 'bullet')
  end
  
  def timestamp(created_at)
    content_tag(:span, time_ago_in_words(created_at) + '前', :class => 'timestamp')
  end
  
  def msg(id)
    if user_signed_in?
      return link_to('私信', new_message_url(:id => id), :remote => true)
    else
      return nil
    end
  end
  
  def opt4m(obj)
    [msg(obj.user.id), timestamp(obj.created_at)].compact.join(delimitor).to_s.html_safe
  end
  
end
