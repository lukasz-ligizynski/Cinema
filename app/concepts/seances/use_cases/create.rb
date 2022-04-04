# frozen_string_literal: true

module Seances
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Seances::Repository.new)
        @repository = repository
      end

      def call(params:)
        seats = Seances::UseCases::TemporarySeats.new(params: params).call
        params[:seats] = seats
        begin
          seance = repository.create(params)
          DeleteSeanceJob.set(wait_until: seance.end_time).perform_later(id: seance.id)
        rescue StandardError => e
          puts "Rescued: #{e.inspect}"
        end
        seance
      end
    end
  end
end
