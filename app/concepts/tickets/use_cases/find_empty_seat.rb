# frozen_string_literal: true

module Tickets
  module UseCases
    class FindEmptySeat
      attr_reader :params

      def initialize(params:)
        @params = params
      end

      def call
        seats_table.map do |seat|
          next unless (seat['taken']).zero?

          @place = seat['seat']
          book_seat
          break
        end
        @place
      end

      def seats_table
        seance_id = Reservation.find(@params[:reservation_id])[:seance_id]
        Seance.find(seance_id)[:seats]
      end

      # seance.update(seats: new_table)
      def book_seat
        new_seats_table = seats_table
        new_seats_table.each do |seat|
          next unless seat['seat'] == @place

          seat['taken'] = 1
        end
        seance_id = Reservation.find(@params[:reservation_id])[:seance_id]
        seance = Seance.find(seance_id)
        seance.update(seats: new_seats_table)
      end
    end
  end
end
