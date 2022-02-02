# frozen_string_literal: true

class MoviesController < ActionController::Base
  def index
    render json: ::Movies::Repository.find_all
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :duration)
  end
end
