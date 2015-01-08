class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'themoviedb'

  before_filter :set_config
  Tmdb::Api.key("******")

  def set_config
    @configuration = Tmdb::Configuration.new
  end

end
