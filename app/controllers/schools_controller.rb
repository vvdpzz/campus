class SchoolsController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :find_school, :only => [:show, :edit, :update, :destroy]

  def index
    @schools = School.all
  end

  def show
    @boom = current_user.booms.build
  end

  def new
    @school = School.new
  end

  def edit
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      redirect_to(@school, :notice => 'School was successfully created.')
    else
      render :new
    end
  end

  def update
    if @school.update_attributes(params[:school])
      redirect_to(@school, :notice => 'School was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @school.destroy
    redirect_to(schools_url)
  end
  
  protected
    def find_school
      @school = School.find_by_abbr(params[:id])
    end
end
