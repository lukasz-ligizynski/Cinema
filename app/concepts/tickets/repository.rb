# frozen_string_literal: true

module Tickets
  class Repository
    class << self
      delegate :find_all,
               to: :new
    end

    def find_all
      Ticket.order(:id).all
    end
  end
end
