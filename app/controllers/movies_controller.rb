class MoviesController < ApplicationController

  def show
    movie_id = params[:id]
    @movie_details = Tmdb::Movie.detail(movie_id)
    @movie_images = Tmdb::Movie.images(movie_id)
    @movie_cast = Tmdb::Movie.casts(movie_id)
  end
end