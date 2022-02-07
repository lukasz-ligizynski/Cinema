# frozen_string_literal: true

class HallsController < ActionController::Base
  def index
    halls = Halls::Repository.new.find_all
    render json: Halls::Representer.new(halls).basic
  end

  def hall_params
    params.require(:hall).permit(:name, :rows, :columns, :seats)
  end
end
