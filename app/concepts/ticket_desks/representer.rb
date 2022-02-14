# frozen_string_literal: true

module TicketDesks
  class Representer
    attr_reader :ticket_desk

    def initialize(ticket_desk)
      @ticket_desk = ticket_desk
    end

    def basic
      ticket_desk.map do |ticket_desk|
        {
          id: ticket_desk.id,
          status: ticket_desk.status
        }
      end
    end
  end
end
