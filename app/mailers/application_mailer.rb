# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  # TicketMailer.TickeEmail(@client,@ticket).deliver_now -> sends email
  default from: 'cinemalukasz@gmail.com'
  layout 'mailer'
end
