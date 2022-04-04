# frozen_string_literal: true

module Reservations
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Reservations::Repository.new)
        @repository = repository
      end

      def call(params:)
        begin
          reservation = repository.create(params)
        rescue StandardError => e
          puts "Rescued: #{e.inspectt}"
        end
        start_time = Seance.find(reservation.seance_id)[:start_time]
        DeleteReservationJob.perform_at(start_time)
        reservation
      end
    end
  end
end
