# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :reservation
  validates :ticket_type, :reservation_id, :seat, :price, presence: true
end
