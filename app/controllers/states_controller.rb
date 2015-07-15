require 'url_helpers'

class StatesController < ApplicationController

  def index
    @states = State.all.order('state_full asc')
    @promo_urls = url_helper.promo_urls
    @link_url = url_helper::DEFAULT_URL
  end

  def show
    @state = State.find_by(slug: params[:slug])
    @city_zip_codes = @state.city_zip_codes.order('primary_city asc')
    @promo_urls = url_helper.promo_urls
    @link_url = url_helper::DEFAULT_URL
  end

  private

  def url_helper
    UrlHelpers
  end

  def promo_urls
    url_helper.promo_urls
  end
end
