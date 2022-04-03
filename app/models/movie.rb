# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :seance
  validates :title, :description, :duration, presence: true
end
