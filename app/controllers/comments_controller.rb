class CommentsController < ApplicationController
  
  before_filter :find_boom
  
  def new
  end

  def create
    @comment = @boom.comments.create(:user_id => current_user.id, :body => params[:comment][:body])
    respond_to do |format|
      format.js
      format.html{ redirect_to @boom.school}
    end
  end
  
  protected
  def find_boom
    @boom = Boom.find(params[:boom_id])
  end
end
