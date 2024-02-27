class StuffsController < ApplicationController
  before_action :set_stuff, only: %i[show destroy]

  def index
    @stuffs = Stuff.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @stuff = Stuff.new
  end

  def create
    @stuff = Stuff.new(stuff_params)
    if @stuff.save
      if params[:stuff][:image]
        cloudinary_image = Cloudinary::Uploader.upload(params[:stuff][:image])
        @stuff.image = cloudinary_image['url']
        @stuff.save
      end
      redirect_to @stuff
    else
      render :new
    end
  end

  def destroy
    @stuff.destroy
    redirect_to root_path
  end

  private

  def set_stuff
    @stuff = Stuff.find(params[:id])
  end

  def stuff_params
    params.require(:stuff).permit(:name, :category, :price, :image)
  end
end
