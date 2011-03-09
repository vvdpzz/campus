class BoomsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_school

  def create
    @boom = @school.booms.build(params[:boom])
    @boom.user_id = current_user.id
    if @boom.save
      redirect_to(@school, :notice => 'Boom was successfully created.')
    else
      render :new
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
