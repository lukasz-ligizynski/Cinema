# frozen_string_literal: true

module Seances
  class Representer
    attr_reader :seances

    def initialize(seances)
      @seances = seances
    end

    def basic
      seances.map do |seance|
        {
          id: seance.id,
          movie_id: seance.movie_id,
          hall_id: seance.hall_id,
          start_time: seance.start_time,
          end_time: seance.end_time
        }
      end
    end
  end
end
