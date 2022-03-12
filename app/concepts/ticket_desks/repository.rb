# frozen_string_literal: true

module TicketDesks
  class Repository
    class << self
      delegate :find_all,
               :create,
               to: :new
    end

    def find_all
      TicketDesk.order(:id).all
    end

    def create(params)
      TicketDesk.create(params)
    end
  end
end
