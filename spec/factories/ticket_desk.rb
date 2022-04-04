# frozen_string_literal: true

# This will guess the ticket_desk class
FactoryBot.define do
  factory :ticket_desk do
    id { rand(1..1_000) }
    status { true }
  end
end
