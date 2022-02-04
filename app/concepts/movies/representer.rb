# frozen_string_literal: true

module Movies
  class Representer
    attr_reader :movies

    def initialize(movies)
      @movies = movies
    end

    def basic
      movies.map do |movie|
        {
          id: movie.id,
          title: movie.title,
          description: movie.description,
          duration: movie.duration
        }
      end
    end
  end
end
