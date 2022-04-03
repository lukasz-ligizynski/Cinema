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
        start_time = Seance.find(reservation.id)[:start_time]
        DeleteReservationJob.set(wait_until: start_time).perform_later(id: reservation.id)
        reservation
      end
    end
  end
end
