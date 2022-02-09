class TicketdesksController < ActionController::Base
  def index
    tiicketdesk = TicketDesks::Repository.new.find_all
    render json: TicketDesks::Representer.new(tiicketdesk).basic
  end

  def ticketdesk_params
    params.require(:ticketdesk).permit(:status)
  end
end
