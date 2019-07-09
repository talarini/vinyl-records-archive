class HomeController < ApplicationController
  def index
    @albums = Album.all
    @bands = Band.all
  end
end
