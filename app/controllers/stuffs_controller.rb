class StuffsController < ApplicationController
  before_action :set_stuff, only: %i[show destroy]

  def index
    @stuffs = Stuff.all
  end

  def show
  end

  def new
    @stuff = stuff.new
  end

  def create
    @stuff = Stuff.new(stuff_params)

    respond_to do |format|
      if @stuff.save
        redirect_to list_url(@stuff), notice: "Stuff was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
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
