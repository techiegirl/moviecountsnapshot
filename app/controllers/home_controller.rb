class HomeController < ApplicationController
  require 'open-uri'
  require 'json'

  def index

    #Movies (count) By Genre
    @drama = Tmdb::Genre.find("Drama").total_results
    @documentary = Tmdb::Genre.find("Documentary").total_results
    @romance = Tmdb::Genre.find("Romance").total_results
    @horror = Tmdb::Genre.find("Horror").total_results
    @action = Tmdb::Genre.find("Action").total_results
    @thriller = Tmdb::Genre.find("Thriller").total_results
    @crime = Tmdb::Genre.find("Crime").total_results
    @adventure = Tmdb::Genre.find("Adventure").total_results
    @action = Tmdb::Genre.find("Action").total_results
    @total_movie_count = get_total_movies_count

    #@movie_now_playing = Tmdb::Movie.now_playing
    #@movie_latest = Tmdb::Movie.latest
    #@movie_upcoming = Tmdb::Movie.upcoming
    #@movie_popular = Tmdb::Movie.popular
    #@movie_top_rated = Tmdb::Movie.top_rated

    #@tv_now_playing = Tmdb::Movie.now_playing
    #@tv_latest = Tmdb::Movie.latest
    #@movie_upcoming = Tmdb::Movie.upcoming
    @tv_popular = Tmdb::Movie.popular
    @tv_top_rated = Tmdb::Movie.top_rated


  end

  def search
    @uuid = params[:search]
  end

  def get_total_movies_count
    themoviedb_url = "http://api.themoviedb.org/3/discover/movie?api_key=#{THEMOVIEDB_KEY}"
    response = JSON.parse(open(themoviedb_url).read)
    return response["total_results"]
  end



end