class CreateSeances < ActiveRecord::Migration[7.0]
  def change
    create_table :seances do |t|
      t.has_many :reservation
      t.belongs_to :movie
      t.belongs_to :hall
      t.integer :time

      t.timestamps
    end
  end
end
