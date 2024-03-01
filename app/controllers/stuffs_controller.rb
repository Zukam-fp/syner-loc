class StuffsController < ApplicationController

  before_action :set_stuff, only: %i[show destroy edit update]
  before_action :authenticate_user!, only: [:new, :create]


  def index
    @stuffs = Stuff.all
    @markers = @stuffs.geocoded.map do |stuff|
      {
        lat: stuff.latitude,
        lng: stuff.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { stuff: stuff })
      }
    end
    if params[:query].present?
      sql_subquery = <<~SQL
        stuffs.name ILIKE :query
        OR stuffs.category ILIKE :query
      SQL
      @stuffs = @stuffs.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @stuff = Stuff.new
  end

  def create
    @stuff = Stuff.new(stuff_params)
    @stuff.user = current_user
    if @stuff.save
      redirect_to stuff_path(@stuff)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @stuff = Stuff.find(params[:id])
    if @stuff.user == current_user
      @stuff.destroy
      redirect_to root_path, notice: 'Le stuff a bien été supprimé.'
    else
      redirect_to root_path, alert: 'Vous ne pouvez pas supprimer ce stuff.'
    end
  end

  def edit
  end

  def update
    if @stuff.user == current_user
      @stuff.edit(stuff_params)
      redirect_to stuff_path(@stuff)
    else
      redirect_to root_path, alert: "Vous ne pouvez pas modifier cette article"
    end
  end

  private

  def set_stuff
    @stuff = Stuff.find(params[:id])
  end

  def stuff_params
    params.require(:stuff).permit(:name, :category, :price, :image, :address)
  end
end
