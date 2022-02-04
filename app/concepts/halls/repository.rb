# frozen_string_literal: true

module Halls
  class Repository
    class << self
      delegate :find_all,
               to: :new
    end

    def find_all
      Hall.order(:id).all
    end
  end
end
