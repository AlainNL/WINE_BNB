class BookingsController < ApplicationController
  before_action :set_teacher, only: [:new, :create]

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.teacher = @teacher
    @booking.date = @date
    @booking.user = current_user
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :teacher_id)
  end

  def set_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end

end
