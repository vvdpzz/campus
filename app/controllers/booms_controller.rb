class BoomsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_school
  
  def new
  end

  def create
    @boom = @school.booms.build(params[:boom])
    @boom.user_id = current_user.id
    @boom.save
    respond_to do |format|
      format.js
      format.html{ redirect_to @school}
    end
  end

  def destroy
    @boom = Boom.find(params[:id])
    @boom.destroy
    redirect_to(schools_url)
  end

  protected
  def find_school
    @school = School.find_by_abbr(params[:school_id])
  end
end
