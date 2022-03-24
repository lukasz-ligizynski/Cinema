# frozen_string_literal: true

class ReservationsController < ActionController::Base
  def index
    reservations = Reservations::Repository.new.find_all
    render json: Reservations::Representer.new(reservations).basic
  end

  def create
    reservation = Reservations::UseCases::Create.new.call(params: reservation_params)
    start_time = Seance.find(reservation.id)[:start_time]
    DeleteReservationJob.set(wait_until: start_time - 15.minutes).perform_later(id: reservation.id)
    render json: reservation, status: :created
  end

  def reservation_params
    params.require(:reservation).permit(:ticket_desk_id, :seance_id, :status, :client_id)
  end
end
