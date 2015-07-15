require 'url_helpers'

class CityZipCodesController < ApplicationController


  def show
    @city_zip_code = CityZipCode.find_by(slug: params[:slug])
    @state = @city_zip_code.state
    @link_url = get_city_url
    @promo_urls = promo_urls
  end

  private

  def url_helper
    UrlHelpers
  end

  def get_city_url
    url_helper.get_city_url(@city_zip_code.primary_city)
  end

  def promo_urls
    url_helper.promo_urls
  end
end
