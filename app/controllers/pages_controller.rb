class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @hens = Hen.where(user_id: current_user.id)
    @bookings = Booking.where(user_id: current_user.id)
  end
end
