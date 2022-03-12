# frozen_string_literal: true

class AddParamsToHalls < ActiveRecord::Migration[7.0]
  def change
    add_column :halls, :seats, :string, array: true, default: []
    add_column :halls, :rows, :integer
    add_column :halls, :columns, :integer
  end
end
