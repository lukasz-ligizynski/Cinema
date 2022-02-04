# frozen_string_literal: true

module Seances
  class Repository
    class << self
      delegate :find_all,
               to: :new
    end

    def find_all
      Seance.order(:id).all
    end
  end
end
