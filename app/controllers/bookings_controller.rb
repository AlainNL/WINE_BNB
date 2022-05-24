class BookingsController < ApplicationController
  before_action :set_list, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.list = @list
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to list_path(@list)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :teacher_id)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
