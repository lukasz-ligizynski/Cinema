# frozen_string_literal: true

module Reservations
  class Representer
    attr_reader :reservations

    def initialize(reservations)
      @reservations = reservations
    end

    def basic
      reservations.map do |reservation|
        {
          id: reservation.id,
          status: reservation.status,
          seance_id: reservation.seance_id,
          ticketdesk_id: reservation.ticketdesk_id,
          client_id: reservation.client_id
        }
      end
    end
  end
end
