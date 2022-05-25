class BookingsController < ApplicationController
  before_action :set_teacher, only: [:new, :create]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.date = @date
    @booking.user = current_user
    @booking.teacher = @teacher
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    authorize @booking
    redirect_to teacher_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :teacher_id)
  end

  def set_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end

end
