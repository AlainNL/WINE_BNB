class BookingsController < ApplicationController
  before_action :set_teacher, :set_user, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.date = @date
    @booking.date = @date
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to XXXX_path(@list)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :teacher_id)
  end

  def set_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
