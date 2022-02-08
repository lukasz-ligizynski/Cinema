# frozen_string_literal: true

module Halls
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Halls::Repository.new)
        @repository = repository
      end

      def call(params:)
        seats = Halls::UseCases::CreateSeats.new(params: params).call
        params[:seats] = seats
        repository.create(params)
      end
    end
  end
end
