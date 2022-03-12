# frozen_string_literal: true

module Seances
  class Repository
    class << self
      delegate :find_all,
               :create,
               to: :new
    end

    def find_all
      Seance.order(:id).all
    end

    def create(params)
      Seance.create(params)
    end
  end
end
