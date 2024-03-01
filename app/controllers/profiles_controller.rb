require_relative '../models/profile'
class ProfilesController < ApplicationController
  # before_action :set_profile, only: %i[show]
  before_action :authenticate_user!, only: [:show]

  # def index
  #   @profiles = Profile.all
  # end

  def show
    @bookings = Booking.where(user: current_user)
    @stuffs = Stuff.where(user: current_user)
  end



  # def set_profile
  #   @profile = Profile.find(params[:id])
  # end

  # private

  # def profile_params
  #   params.require(:profile).permit(:name , :email, :password, :password_confirmation, :photo, :bio, :location, :price_per_day, :rating, :number_of_reviews, :user_id)
  # end
end
