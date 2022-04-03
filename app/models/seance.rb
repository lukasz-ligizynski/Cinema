# frozen_string_literal: true

class Seance < ApplicationRecord
  has_many :reservation, dependent: :destroy
  validates :hall_id, :movie_id, :start_time, :end_time, presence: true
end
