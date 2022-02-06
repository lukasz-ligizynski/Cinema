# frozen_string_literal: true

class ReservationsController < ActionController::Base
  def index
    reservations = Reservations::Repository.new.find_all
    render json: Reservations::Representer.new(reservations).basic
  end

  def reservation_params
    params.require(:movie).permit(:ticketdesk_id, :seance_id, :status, :client_id)
  end
end
