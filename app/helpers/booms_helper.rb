module BoomsHelper
  
  def commentable(id)
    if user_signed_in?
      return link_to('评论', new_boom_comment_url(:boom_id => id), :remote => true)
    else
      return nil
    end
  end
  
  def opt4b(obj)
    [commentable(obj.id), msg(obj.user.id), timestamp(obj.created_at)].compact.join(delimitor).to_s.html_safe
  end
  
end
