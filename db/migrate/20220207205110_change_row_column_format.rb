# frozen_string_literal: true

class ChangeRowColumnFormat < ActiveRecord::Migration[7.0]
  def change
    remove_column :halls, :rows, :integer
    remove_column :halls, :columns, :integer
    add_column :halls, :columns, :string, array: true, default: []
    add_column :halls, :rows, :string, array: true, default: []
  end
end
