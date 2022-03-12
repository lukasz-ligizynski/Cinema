# frozen_string_literal: true

module Seances
  module UseCases
    class TemporarySeats
      attr_reader :params

      def initialize(params:)
        @params = params
      end

      def call(params: @params)
        seats = []
        Hall.find(params[:hall_id])[:seats].map do |seat|
          hash = { seat: seat, taken: 0 }
          seats.push(hash)
          # seance[:seats].find { |h| h["seat"] == "1,1" }["taken"] => find value for "taken" of seat
        end
        seats
      end
    end
  end
end
