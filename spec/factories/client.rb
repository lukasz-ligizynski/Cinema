# frozen_string_literal: true

# This will guess the client class
FactoryBot.define do
  factory :client do
    id { rand(1..1_000) }
    email { Faker::Internet.email }
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    age { rand(1..120) }
  end
end
