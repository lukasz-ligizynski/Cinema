# frozen_string_literal: true

module Seances
  module UseCases
    class Create
      attr_reader :repository

      def initialize(repository: Seances::Repository.new)
        @repository = repository
      end

      def call(params:)
        if !params.present?
          nil
        elsif !params.each.present?
          nil
        else
          repository.create(params)
        end
      end
    end
  end
end
