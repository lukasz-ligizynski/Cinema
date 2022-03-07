# frozen_string_literal: true

module Halls
  class Repository
    class << self
      delegate :find_all,
               :create,
               :destroy,
               to: :new
    end

    def find_all
      Hall.order(:id).all
    end

    def create(params)
      Hall.create(params)
    end

    def destroy(id)
      Hall.destroy(id)
    end
  end
end
