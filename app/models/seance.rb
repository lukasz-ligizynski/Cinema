# frozen_string_literal: true

class Seance < ApplicationRecord
  has_many :reservation
  validates :hall_id, presence: true
  validates :movie_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
