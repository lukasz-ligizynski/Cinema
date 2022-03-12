# frozen_string_literal: true

class MoviesController < ActionController::Base
  def index
    movies = Movies::Repository.new.find_all
    render json: Movies::Representer.new(movies).basic
  end

  def create
    movie = Movies::UseCases::Create.new.call(params: movie_params)
    render json: movie, status: :created
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :duration)
  end
end
