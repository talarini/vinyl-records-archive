class AlbumsController < ApplicationController
  before_action :album_get, only: %i[show edit update destroy]
  before_action :band_get
  def index
    @album = Album.all
  end

  def new
    @album = Album.new
  end

  def show; end

  def edit; end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to @album
    else
      render 'new'
    end
  end

  def update
    if @album.update(album_params)
      redirect_to @album
    else
      render 'show'
    end
  end

  def destroy
    @album.destroy

    redirect_to albums_path
  end

  private
  def album_params
    params.require(:album).permit(:name, :details,:band_id)
  end

  def album_get
    @album = Album.find(params[:id])
  end

  def band_get
    @bands = Band.all
  end
end
