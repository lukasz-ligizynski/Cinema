# frozen_string_literal: true

module Halls
  class Representer
    attr_reader :halls

    def initialize(halls)
      @halls = halls
    end

    def basic
      halls.map do |hall|
        {
          id: hall.id,
          name: hall.name,
          rows: hall.rows,
          columns: hall.columns,
          seats: hall.seats
        }
      end
    end
  end
end
