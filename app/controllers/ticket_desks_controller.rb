# frozen_string_literal: true

class TicketDesksController < ActionController::Base
  def index
    ticket_desk = TicketDesks::Repository.new.find_all
    render json: TicketDesks::Representer.new(ticket_desk).basic
  end

  def create
    ticket_desk = TicketDesks::UseCases::Create.new.call(params: ticket_desk_params)
    render json: ticket_desk, status: :created
  end

  def ticket_desk_params
    params.require(:ticket_desk).permit(:status)
  end
end
