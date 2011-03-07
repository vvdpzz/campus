class BoomsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_school

  def edit
    @boom = Boom.find(params[:id])
  end

  def create
    @boom = current_user.booms.build(params[:boom])
    @boom.school_id = @school.id
    if @boom.save
      redirect_to(@boom, :notice => 'Boom was successfully created.')
    else
      render :new
    end
  end

  def update
    @boom = current_user.booms.build(params[:id])
    @boom.school_id = @school.id

    if @boom.update_attributes(params[:boom])
      redirect_to(@boom, :notice => 'Boom was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @boom = Boom.find(params[:id])
    @boom.destroy
    redirect_to(booms_url)
  end

  protected
  def find_school
    @school = School.find_by_abbr(params[:id])
  end
end
