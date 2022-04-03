# frozen_string_literal: true

module TicketDesks
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: TicketDesks::Repository.new)
        @repository = repository
      end

      def call(params:)
        return unless !params.present? || !params.each.present?

        begin
          repository.create(params)
        rescue StandardError => e
          puts "Rescued: #{e.inspectt}"
        end
      end
    end
  end
end
