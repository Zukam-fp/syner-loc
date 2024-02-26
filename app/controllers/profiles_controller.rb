class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show]

  def index
    @profiles = Profile.all
  end

  def show
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name)
  end

end
