# frozen_string_literal: true

class TicketsController < ActionController::Base
  def index
    tickets = Tickets::Repository.new.find_all
    render json: Tickets::Representer.new(tickets).basic
  end

  def create
    ticket = Tickets::UseCases::Create.new.call(params: ticket_params)
    render json: ticket, status: :created
  end

  def ticket_params
    params.require(:ticket).permit(:reservation_id, :ticket_type, :seat, :price)
  end
end
