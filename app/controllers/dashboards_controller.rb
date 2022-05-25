class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: [:show]

#  def show
#    @teacher = Teacher.find(params[:id])
#    authorize @teacher
#  end

end
