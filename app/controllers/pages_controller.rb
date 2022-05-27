class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @user = User.first
    @teachers = Teacher.all
  end
end
