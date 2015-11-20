class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def new
    @band = Band.new
    render :new
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      render :show
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end

  def destroy
  end


  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update

  end

  private

  def band_params
    params.require(:bands).permit(:name)
  end
end
