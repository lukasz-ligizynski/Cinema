# frozen_string_literal: true

module Halls
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Halls::Repository.new)
        @repository = repository
      end

      def call(params:)
        if !params.present?
          nil
        elsif !params[:rows].present? || !params[:columns].present?
          nil
        else
          seats = Halls::UseCases::CreateSeats.new(params: params).call
          params[:seats] = seats
        end
        begin
          repository.create(params)
        rescue StandardError => e
          puts "Rescued: #{e.inspectt}"
        end
      end
    end
  end
end
