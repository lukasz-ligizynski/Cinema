class ChangeString < ActiveRecord::Migration[7.0]
  def change
    remove_column :seances, :seats, :array
    add_column :seances, :seats, :json, array: true, default: []
  end
end
