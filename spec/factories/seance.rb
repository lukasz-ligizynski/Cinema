# frozen_string_literal: true

# This will guess the seance class
FactoryBot.define do
  factory :seance do
    id { rand(1..1_000) }
    hall_id { FactoryBot.create(:hall).id }
    movie_id { FactoryBot.create(:movie).id }
    start_time { DateTime.now + 10 }
    end_time { DateTime.now + 11 }
    seats { [{ seat: '1,1', taken: 0 }, { seat: '1,2', taken: 0 }] }
  end
end
