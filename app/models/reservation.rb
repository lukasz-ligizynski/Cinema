class Reservation < ApplicationRecord
    belongs_to :seance
    belongs_to :ticketdesk
    belongs_to :client
    has_many :ticket
end
