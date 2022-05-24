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
    authorize @teacher
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    @teacher.save
    authorize @teacher
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
    authorize @teacher
  end

  private

  def teacher_params
    params.require(:teacher).permit(:price, :picture, :feature, :user_id)
  end
end
