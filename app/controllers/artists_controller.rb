class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(a_params)
  end

  def edit
    s_artist
  end

  def update
    s_artist
    @artist.update(a_params)
    redirect_to artist_path(@artist)
  end

  def show
    s_artist
  end


  def s_artist
    @artist = Artist.find(params[:id])
  end

  def a_params
    params.require(:name, :bio)
  end

end
