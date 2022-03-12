# frozen_string_literal: true

class CreateSeances < ActiveRecord::Migration[7.0]
  def change
    create_table :seances do |t|
      t.belongs_to :movie
      t.belongs_to :hall
      t.integer :time

      t.timestamps
    end
  end
end
