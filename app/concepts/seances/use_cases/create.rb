# frozen_string_literal: true

module Seances
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Seances::Repository.new)
        @repository = repository
      end

      def call(params:)
        return  unless !params.present? || !params.each.present?

        seats = Seances::UseCases::TemporarySeats.new(params: params).call
        params[:seats] = seats
        repository.create(params)
      end
    end
  end
end
