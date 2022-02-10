# frozen_string_literal: true

class ReservationsController < ActionController::Base
  def index
    reservations = Reservations::Repository.new.find_all
    render json: Reservations::Representer.new(reservations).basic
  end

  def new
    reservation = Reservations::UseCases::Create.new.call(params: reservation_params)
    render json: reservation, status: :created
  end

  def reservation_params
    params.require(:reservation).permit(:ticket_desk_id, :seance_id, :status, :client_id)
  end
end
