# frozen_string_literal: true

module Reservations
  class Repository
    class << self
      delegate :find_all,
               to: :new
    end

    def find_all
      Reservation.order(:id).all
    end
  end
end
