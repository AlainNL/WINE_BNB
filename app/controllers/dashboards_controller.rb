class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: [:show]

  def show
    #show teachers, my bookings,
  end

end
