# frozen_string_literal: true

# This will guess the movie class
FactoryBot.define do
  factory :movie do
    id { rand(1..1_000) }
    title { Faker::Movie.title }
    description { Faker::Lorem.sentences }
    duration { rand(1800..10_800) }
  end
end
