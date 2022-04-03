# frozen_string_literal: true

class Hall < ApplicationRecord
  validates :name, :columns, :rows, presence: true
  has_many :seance
end
