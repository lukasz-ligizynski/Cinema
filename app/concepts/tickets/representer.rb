# frozen_string_literal: true

module Tickets
  class Representer
    attr_reader :tickets

    def initialize(tickets)
      @tickets = tickets
    end

    def basic
      tickets.map do |ticket|
        {
          id: ticket.id,
          seat: ticket.seat,
          ticket_type: ticket.ticket_type,
          price: ticket.price,
          reservation_id: ticket.reservation_id
        }
      end
    end
  end
end
