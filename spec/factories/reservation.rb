# This will guess the reservation class
FactoryBot.define do
  factory :reservation do
    id { 1 }
    client_id { 1 }
    seance_id { 1 }
    ticket_desk_id { 1 }
  end
end
