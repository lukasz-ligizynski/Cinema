class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :reservation
      t.string :seat
      t.string :type
      t.decimal :price
      
      t.timestamps
    end
  end
end
