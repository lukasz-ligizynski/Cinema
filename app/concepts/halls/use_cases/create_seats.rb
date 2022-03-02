# frozen_string_literal: true

module Halls
  module UseCases
    class CreateSeats
      attr_reader :params

      def initialize(params:)
        @params = params
      end

      def call(params: @params)
        if !params.present?
          nil
        elsif !params[:rows].present? || !params[:columns].present?
          nil
        else
          seats = []
          params[:rows].map do |row|
            params[:columns].map do |column|
              seats += ["#{row},#{column}"]
            end
          end
        end
        seats
      end
    end
  end
end
