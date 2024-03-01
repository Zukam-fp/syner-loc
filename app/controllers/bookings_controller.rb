class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :confirm, :decline]
  before_action :authenticate_user!, only: [:new, :create]

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
      redirect_to profiles_path
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
      redirect_to profiles_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def confirm
    @booking.status = "accepted"
    @booking.save
    redirect_to profiles_path
  end

  def decline
    @booking.status = "declined"
    @booking.save
    redirect_to profiles_path
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date_starting, :date_ending)
  end
end
