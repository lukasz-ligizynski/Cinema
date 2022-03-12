# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :reservation
  has_many :client_promotion
end
