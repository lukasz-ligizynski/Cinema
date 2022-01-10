class CreateSeances < ActiveRecord::Migration[7.0]
  def change
    create_table :seances do |t|
      t.float :time

      t.timestamps
    end
  end
end
