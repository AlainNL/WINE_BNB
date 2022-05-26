class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @user = User.first
    @bookings = Booking.all
    @teacher = Teacher.all
  end
end
