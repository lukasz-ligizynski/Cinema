# frozen_string_literal: true

module Tickets
  module UseCases
    class IsSeatEmpty
      attr_reader :params

      def initialize(params:)
        @params = params
      end

      def call
        if seat_taken(seat: @params[:seat])
          true
        else
          false
        end
      end

      def seat_taken(seat:)
        seance_id = Reservation.find(@params[:reservation_id])[:seance_id]
        seat_table = Seance.find(seance_id)[:seats]
        seat_table.find { |row| row['seat'] == seat }['taken']
      end
    end
  end
end
