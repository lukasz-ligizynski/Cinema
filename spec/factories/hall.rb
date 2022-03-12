# This will guess the hall class
FactoryBot.define do
  factory :hall do
    id { 1 }
    rows { [1, 2] }
    columns { [1, 2] }
  end
end
