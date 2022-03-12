# frozen_string_literal: true

class ChangeTypeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :tickets, :type, :ticket_type
  end
end
