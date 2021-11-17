class BookingsController < ApplicationController
  before_action :set_hen, only: %i[show new create]

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
    @booking.hen = @hen
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to hen_booking_path(@hen, @booking)
    else
      render :new
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
