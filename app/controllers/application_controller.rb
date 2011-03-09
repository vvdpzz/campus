class ApplicationController < ActionController::Base
  before_filter :set_title
  protect_from_forgery
  
  protected
    def set_title
      @title = "匿名告白"
    end
end
