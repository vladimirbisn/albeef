class ProductionController < ApplicationController
  def index
  end
  def render_animal_part
    params[:part_id].nil? ? params[:part_id] = 4 : params[:part_id] = params[:part_id].to_i
    @part_data = Production.where(:part_id => params[:part_id])

    render json: @part_data
  end
end