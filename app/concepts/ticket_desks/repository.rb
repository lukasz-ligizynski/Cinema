# frozen_string_literal: true

module TicketDesks
  class Repository
    class << self
      delegate :find_all,
               to: :new
    end

    def find_all
      TicketDesk.order(:id).all
    end
  end
end
