# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :seance
  belongs_to :ticket_desk
  belongs_to :client
  has_many :ticket
  validates :status, :client_id, :seance_id, :ticket_desk_id,presence: true
end
