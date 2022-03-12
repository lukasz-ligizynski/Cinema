# frozen_string_literal: true

class ChangePriceToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :tickets, :price, :float
  end
end
