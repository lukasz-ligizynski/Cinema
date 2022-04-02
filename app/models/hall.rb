# frozen_string_literal: true

class Hall < ApplicationRecord
  validates :name, presence: true
  validates :columns, presence: true
  validates :rows, presence: true
  has_many :seance
end
