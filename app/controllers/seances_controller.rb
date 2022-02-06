# frozen_string_literal: true

class SeancesController < ActionController::Base
  def index
    seances = Seances::Repository.new.find_all
    render json: Seances::Representer.new(seances).basic
  end

  def seance_params
    params.require(:seance).permit(:hall_id, :movie_id, :start_time, :end_time)
  end
end
