module BoomsHelper
  
  def commentable(obj)
    if user_signed_in?
      return link_to('评论', new_boom_comment_url(:boom_id => obj.id), :remote => true)
    else
      return nil
    end
  end
  
  def messageable(obj)
    if user_signed_in?
      return link_to('私信', new_boom_message_url(:boom_id => obj.id), :remote => true)
    else
      return nil
    end
  end
  
  def opt4(obj)
    [commentable(obj), messageable(obj), timestamp(obj)].compact.join(delimitor).to_s.html_safe
  end
  
end
