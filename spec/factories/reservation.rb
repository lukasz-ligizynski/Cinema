# This will guess the reservation class
FactoryBot.define do
  factory :reservation do
    id { rand(1..1_000) }
    client_id { FactoryBot.create(:client).id }
    seance_id { FactoryBot.create(:seance).id }
    ticket_desk_id { FactoryBot.create(:ticket_desk).id }
    status { Faker::Lorem.word }
  end
end
