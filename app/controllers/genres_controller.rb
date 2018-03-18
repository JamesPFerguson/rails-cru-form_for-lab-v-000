class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(a_params)
    @genre.save
    a_redirect
  end

  def edit
    s_genre
  end

  def update
    s_genre
    @genre.update(a_params)
    a_redirect
  end

  def show
    s_genre
  end

  private
    def s_genre
      @genre = Genre.find(params[:id])
    end

    def g_params
      params.require(:name, :bio)
    end

    def g_redirect
        redirect_to genre_path(@genre)
    end

end
