class TeachersController < ApplicationController

  def index
  end

  def new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
  end

  def show
  end

  def teacher_params
    params.require(:teacher).permit(:name, :city, :image_url)
  end


end
