# frozen_string_literal: true

class Seance < ApplicationRecord
  has_many :reservation
end
