require 'rails_helper'

describe CityZipCodesController, type: :controller  do

  describe "GET show" do
    let(:city_zip) { CityZipCode.third }
    let(:city_zip_id) { city_zip.id }
    it "gets show" do
      get :show, id: city_zip_id

      expect(response.status).to eq 200
    end

    it "GET :show" do
      get :show, id: city_zip_id

      expect(response).to render_template(:show)
    end

    it "assigns @city_zip_code" do
      get :show, id: city_zip_id

      expect(assigns(:city_zip_code)).to eq(city_zip)
    end

    context "RenderViews" do
      render_views
      it "includes the state full name" do
        get :show, id: city_zip_id

        expect(response.body).to match /#{city_zip.primary_city}/
      end
    end
  end
end