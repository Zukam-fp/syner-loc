class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @stuff = Stuff.find(params[:stuff_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @stuff = Stuff.find(params[:stuff_id])
    @booking.stuff = @stuff
    @booking.user = current_user
    if @booking.save
      redirect_to stuff_path(@stuff)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to stuff_path(@booking.stuff)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.update(booking_params)
    @stuff = Stuff.find(params[:stuff_id])
    @booking.stuff = @stuff
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date_starting, :date_ending)
  end
end
