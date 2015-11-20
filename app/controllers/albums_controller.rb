class AlbumsController < ApplicationController
  def new

  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      render :show
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end

  end

  def destroy
  end


  def edit
  end

  def update

  end

  private

  def album_params
    # fail
    params.require(:albums).permit(:name, :band_id)
  end
end
