class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :seance
      t.belongs_to :ticketdesk
      t.belongs_to :client
      t.has_many :ticket
    
      t.string :status

      t.timestamps
    end
  end
end
