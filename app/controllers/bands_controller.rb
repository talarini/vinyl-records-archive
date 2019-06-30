class BandsController < ApplicationController
  before_action :band_get, only: %i[show edit update destroy]
  def index
    @band = Band.all
  end

  def new
    @band = Band.new
  end

  def show; end

  def edit; end

  def create
    @band = Band.new(band_params)

    if @band.save
      redirect_to @band
    else
      render 'new'
    end
  end

  def update
    if @band.update(band_params)
      redirect_to @band
    else
      render 'show'
    end
  end

  def destroy
    @band.destroy

    redirect_to bands_path
  end

  private
  def band_params
    params.require(:band).permit(:name, :artist)
  end

  def band_get
   @band = Band.find(params[:id])
  end
end
