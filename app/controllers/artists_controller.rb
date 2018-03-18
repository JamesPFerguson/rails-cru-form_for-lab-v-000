class ArtistsController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    
  end


  def s_artist
    @artist = Artist.find(params[:id])
  end

  def a_params
    params.require(:name, :bio)
  end
end
