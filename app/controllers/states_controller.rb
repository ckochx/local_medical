class StatesController < ApplicationController

  def index
    @states = State.all.order('state_full asc')
  end

  def show
    @state = State.find(params[:id])
    @city_zip_codes = @state.city_zip_codes.order('primary_city desc')
  end

end