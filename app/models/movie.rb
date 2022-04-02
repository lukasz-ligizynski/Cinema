# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :seance
  validates :title, presence: true
  validates :description, presence: true
  validates :duration, presence: true
end
