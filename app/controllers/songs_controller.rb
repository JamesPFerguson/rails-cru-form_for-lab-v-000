class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(s_params)
    @song.save
    s_redirect
  end

  def edit
    s_song
  end

  def update
    s_song
    @song.update(s_params)
    s_redirect
  end

  def show
    s_song
  end

  private
    def s_song
      @song = Song.find(params[:id])
    end

    def s_params
      params.require(:name)
    end

    def s_redirect
        redirect_to song_path(@song)
    end
end
