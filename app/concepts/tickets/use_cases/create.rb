# frozen_string_literal: true

module Tickets
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Tickets::Repository.new)
        @repository = repository
      end

      def call(params:)
        if !params.present?
          nil
        elsif !params.each.present?
          nil
        else
          byebug
          params[:seat] = Tickets::UseCases::FindEmptySeat.new(params: params).call
          byebug
          repository.create(params)
        end
      end
    end
  end
end
