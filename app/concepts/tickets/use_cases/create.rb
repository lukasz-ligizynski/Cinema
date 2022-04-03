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

        check_seat(params: params)
        begin
          repository.create(params)
        rescue StandardError => e
          puts "Rescued: #{e.inspectt}"
        end
      end
    end

    private 

    def check_seat(params:)
      if params[:seat].empty?
        params[:seat] = Tickets::UseCases::FindEmptySeat.new(params: params).call
      elsif Tickets::UseCases::IsSeatEmpty.new(params: params).call
        'Set is taken, change seat'
      else
        params[:seat]
      end
    end
  end
end
