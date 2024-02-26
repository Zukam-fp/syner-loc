class StuffsController < ApplicationController
  before_action :set_stuff, only: %i[show destroy]

  def index
    @stuffs = Stuff.all
  end

  def show
  end

  def new
    @stuff = Stuff.new
  end

  def create
    @stuff = Stuff.new(stuff_params)
    @stuff.user = current_user
    if @stuff.save
      redirect_to root_path(@stuff)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_stuff
    @stuff = Stuff.find(params[:id])
  end

  def stuff_params
    params.require(:stuff).permit(:name)
  end
end
