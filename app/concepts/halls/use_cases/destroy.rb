# frozen_string_literal: true

module Halls
  module UseCases
    class Destroy
      attr_reader :repository

      def initialize(repository: Halls::Repository.new)
        @repository = repository
      end

      def call(id)
        repository.destroy(id)
      end
    end
  end
end
