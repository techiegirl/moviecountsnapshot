class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'themoviedb'

  before_filter :set_config
  Tmdb::Api.key("833d95a2cf8496b48ee4cde5af278aa9")

  def set_config
    @configuration = Tmdb::Configuration.new
  end

end
