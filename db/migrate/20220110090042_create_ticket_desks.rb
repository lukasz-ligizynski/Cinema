class CreateTicketDesks < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_desks do |t|
      t.has_many :reservation
      t.boolean :status

      t.timestamps
    end
  end
end
