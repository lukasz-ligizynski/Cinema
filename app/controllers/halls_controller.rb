# frozen_string_literal: true

class HallsController < ActionController::Base
  def index
    halls = Halls::Repository.new.find_all
    render json: Halls::Representer.new(halls).basic
  end

  def create
    hall = Halls::UseCases::Create.new.call(params: hall_params)
    render json: hall, status: :created
  end

  def destroy(id)
    Halls::UseCases::Destroy.new.call(id)
    render json: { status: 'deleted' }
  end

  def hall_params
    params.require(:hall).permit(:name, :rows, :columns)
  end
end
