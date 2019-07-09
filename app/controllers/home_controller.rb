class HomeController < ApplicationController
  def index
    @album = Album.all
    @band = Band.all
  end
end
