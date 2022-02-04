# frozen_string_literal: true

module Movies
  class Repository
    class << self
      delegate :find_all,
               to: :new
    end

    def find_all
      Movie.order(:id).all
    end
  end
end
