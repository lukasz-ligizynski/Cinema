# frozen_string_literal: true

class AddSeatsColumnToSeances < ActiveRecord::Migration[7.0]
  def change
    add_column :seances, :seats, :structures, array: true, default: []
  end
end
