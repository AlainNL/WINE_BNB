class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: %i[myclasses myreservations]

  #def myclasses
    #@user = current_user
    #@myclasses = @user.myclasses
    #authorize @teacher
  #end

  #def myreservations
    #@user = current_user
    #@bookings = @user.bookings
    #authorize @teacher
  #end

end
