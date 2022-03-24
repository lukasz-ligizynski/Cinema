# frozen_string_literal: true

class SeancesController < ActionController::Base
  def index
    seances = Seances::Repository.new.find_all
    render json: Seances::Representer.new(seances).basic
  end

  def create
    seance = Seances::UseCases::Create.new.call(params: seance_params)
    DeleteSeanceJob.set(wait_until: seance.end_time).perform_later(id: seance.id)

    render json: seance, status: :created
  end

  def seance_params
    params.require(:seance).permit(:hall_id, :movie_id, :start_time, :end_time)
  end
end
