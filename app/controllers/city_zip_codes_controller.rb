class CityZipCodesController < ApplicationController

  def index
    @city_zip_codes = CityZipCode.all
  end

  def show
    @city_zip_code = CityZipCode.find(params[:id])
  end

end
