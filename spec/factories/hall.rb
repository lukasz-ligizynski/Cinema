# frozen_string_literal: true

# This will guess the hall class
FactoryBot.define do
  factory :hall do
    id { rand(1..1_000) }
    rows { @row = *(1..(rand(2..10))) }
    columns { @columns = *(1..(rand(2..10))) }
    seats { ['1,1', '1,2', '2,1', '2,2', '3,1', '3,2'] }
  end
end
