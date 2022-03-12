# frozen_string_literal: true

class TicketDesk < ApplicationRecord
  has_many :reservation
end
