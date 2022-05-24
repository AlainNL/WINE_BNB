class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @teachers = policy_scope(Teacher)
  end

  def new
    @teacher = Teacher.new
    authorize @teacher
  end

  def edit
    @teacher = Teacher.find(params[:id])
    @teacher = Teacher.new
    authorize @teacher
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    authorize @teacher
  end

  def show
    authorize @teachers
    @teacher = Teacher.find(params[:id])
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :city, :picture, :feature)
  end
end
