require 'rails_helper'

describe CityZipCodesController, type: :controller  do

  describe "GET show" do
    let(:city_zip) { CityZipCode.third }
    let(:slug) { city_zip.slug }
    it "gets show" do
      get :show, slug: slug

      expect(response.status).to eq 200
    end

    it "GET :show" do
      get :show, slug: slug

      expect(response).to render_template(:show)
    end

    it "assigns @city_zip_code" do
      get :show, slug: slug

      expect(assigns(:city_zip_code)).to eq(city_zip)
    end

    it "assigns @link_url" do
      minneapolis = CityZipCode.find_by(primary_city: "Minneapolis")
      get :show, slug: minneapolis.slug

      expect(assigns(:link_url)).to eq(UrlHelpers::CITY_URL['Minneapolis'])
    end

    it "assigns @promo_urls" do
      get :show, slug: slug

      expect(assigns(:promo_urls)).to eq(UrlHelpers::PROMO_URLS)
    end

    it "assigns @state" do
      get :show, slug: slug

      expect(assigns(:state)).to eq(city_zip.state)
    end

    it "gets the default_url when the city is not present" do
      get :show, slug: slug

      expect(assigns(:link_url)).to eq(UrlHelpers::DEFAULT_URL)
    end

    context "RenderViews" do
      render_views
      it "includes the state full name" do
        get :show, slug: slug

        expect(response.body).to match /#{city_zip.primary_city}/
      end
    end
  end
end