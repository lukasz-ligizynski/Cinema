class TicketMailer < ApplicationMailer
  def send_ticket(client, ticket)
    @client = client
    @ticket = ticket
    mail(to: @client.email, subject: 'Your tcket')
  end
end
