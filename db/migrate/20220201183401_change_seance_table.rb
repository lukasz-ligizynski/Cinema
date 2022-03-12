# frozen_string_literal: true

class ChangeSeanceTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :seances, :time, :integer
    add_column :seances, :start_time, :datetime
    add_column :seances, :end_time, :datetime
  end
end
