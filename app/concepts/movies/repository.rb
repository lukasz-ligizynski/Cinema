# frozen_string_literal: true

module Movies
  class Repository
    class << self
      delegate :find_all,
               :create,
               to: :new
    end

    def find_all
      Movie.order(:id).all
    end

    def create(params)
      Movie.create(params)
    end
  end
end
