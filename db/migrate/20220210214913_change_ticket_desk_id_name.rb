class ChangeTicketDeskIdName < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :ticketdesk_id, :ticket_desk_id
  end
end
