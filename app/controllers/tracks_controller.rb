class TracksController < ApplicationController

  def new
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end

  def create

    @track = Track.new(track_params)
# fail
    if @track.save
      render :show
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  private

  def track_params
    # fail
    params.require(:tracks).permit(:name, :album_id, :lyrics, :kind)
  end
end
