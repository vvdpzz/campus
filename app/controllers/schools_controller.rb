class SchoolsController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :find_school, :only => [:show, :edit, :update, :destroy]

  def index
    if current_user.school
      redirect_to current_user.school
    else
      @schools = School.all
    end
  end
  
  def home
    current_user.update_attributes(:school => nil, :school_name => nil)
    redirect_to root_url
  end

  def show
    @title = @school.name
    current_user.update_attributes(:school => url_for(@school), :school_name => @school.name)
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
