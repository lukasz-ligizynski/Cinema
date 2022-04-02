# frozen_string_literal: true

class TicketDesk < ApplicationRecord
  has_many :reservation
  validates :status, presence: true
end
