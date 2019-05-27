class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking = Booking.find(params[:id_product])
    @booking.product = @product
    @booking.save
    redirect_to product_bookings_path(@booking)
  end

  def booking_params
    params.require(:booking).permit(:id_user, :id_product, :date)
  end
end
