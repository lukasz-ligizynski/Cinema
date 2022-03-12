# frozen_string_literal: true

# This will guess the seance class
FactoryBot.define do
  factory :seance do
    id { rand(1..1_000) }
    hall_id { FactoryBot.create(:hall).id }
    movie_id { FactoryBot.create(:movie).id }
    start_time { @start_time = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    end_time { Faker::Time.between(from: @start_time, to: DateTime.now + 1) }
    seats { [{ seat: '1,1', taken: 0 }, { seat: '1,2', taken: 0 }] }
  end
end
