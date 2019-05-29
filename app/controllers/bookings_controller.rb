class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = Product.find(params[:product_id])
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      @booking.save
      redirect_to dashboard_path
      authorize @booking
    else
      render :edit
    end
  end

  def accept
    skip_authorization
    @booking = Booking.find(params[:booking_id])
    @booking.status = 'accept'
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    skip_authorization
    @booking = Booking.find(params[:booking_id])
    @booking.status = 'decline'
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :people)
  end
end
