class DeleteReservationJob
  include Sidekiq::Job

  def perform(id:)
    status = Reservation.find(id)[:status]
    reservation = Reservation.find(id)
    reservation.delete if status == 'unpaid'
  end
end
