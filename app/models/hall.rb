class Hall < ApplicationRecord
  validates :columns, presence: true
  validates :rows, presence: true
  has_many :seance
end
