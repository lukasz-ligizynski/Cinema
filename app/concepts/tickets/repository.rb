# frozen_string_literal: true

module Tickets
  class Repository
    class << self
      delegate :find_all,
               :create,
               to: :new
    end

    def find_all
      Ticket.order(:id).all
    end

    def create(params)
      Ticket.create(params)
    end
  end
end
