# This will guess the ticket class
FactoryBot.define do
  factory :ticket do
    id { rand(1..1_000) }
    reservation_id { FactoryBot.create(:reservation).id }
    price { rand(20..50) }
    status { Faker::Lorem.word }
    seat { [['1,1']] }
  end
end
