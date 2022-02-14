# frozen_string_literal: true

module Reservations
  class Repository
    class << self
      delegate :find_all,
               :create,
               to: :new
    end

    def find_all
      Reservation.order(:id).all
    end

    def create(params)
      Reservation.create(params)
    end
  end
end
