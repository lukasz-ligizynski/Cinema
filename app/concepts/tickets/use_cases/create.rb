# frozen_string_literal: true

module Tickets
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Tickets::Repository.new)
        @repository = repository
      end

      def call(params:)
        return unless !params.present? || !params.each.present?

        params[:seat] = Tickets::UseCases::FindEmptySeat.new(params: params).call
        begin
          repository.create(params)
        rescue StandardError => e
          puts "Rescued: #{e.inspectt}"
        end
      end
    end
  end
end
