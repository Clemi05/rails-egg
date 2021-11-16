class BookingsController < ApplicationController
  before_action :set_hen, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.hen = @hen
    if @booking.save
      redirect_to root
    else
      render 'hens/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end

  def set_hen
    @hen = Hen.find(params[:hen_id])
  end
end
