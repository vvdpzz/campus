class MessagesController < ApplicationController
  
  def index
    @title = current_user.school_name
    @sent = current_user.messages
    @received = Message.where(:friend_id => current_user.id)
  end
  
  def new
    @id = params[:id]
  end

  def create
    @message = current_user.messages.create(:friend_id => params[:id], :body => params[:message][:body])
    respond_to do |format|
      format.js
      format.html{ redirect_to(current_user.school, :notice => "私信发送成功！")}
    end
  end
  
end
