class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :seat
      t.string :type
      t.float :price

      t.timestamps
    end
  end
end
