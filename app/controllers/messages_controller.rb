class MessagesController < ApplicationController
  
  before_filter :find_boom
  
  def new
  end

  def create
    @comment = @boom.messages.create(:user_id => current_user.id, :body => params[:message][:body])
  end
  
  protected
  def find_boom
    @boom = Boom.find(params[:boom_id])
  end
  
end
