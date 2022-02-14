class TicketDesksController < ActionController::Base
  def index
    tiicket_desk = TicketDesks::Repository.new.find_all
    render json: TicketDesks::Representer.new(tiicket_desk).basic
  end

  def ticket_desk_params
    params.require(:ticket_desk).permit(:status)
  end
end
