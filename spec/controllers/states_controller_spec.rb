require 'rails_helper'

describe StatesController, type: :controller  do

  describe "GET index" do

    it "gets index" do
      get :index

      expect(response.status).to eq 200
    end

    it "GET :index" do
      get :index

      expect(response).to render_template(:index)
    end

    it "assigns @states" do
      states = State.all.order('state_full asc')

      get :index

      expect(assigns(:states)).to eq(states)
    end

    it "assigns @promo_urls" do
      get :index

      expect(assigns(:promo_urls)).to eq(UrlHelpers::PROMO_URLS)
    end

    it "assigns @link_url" do
      get :index

      expect(assigns(:link_url)).to eq(UrlHelpers::DEFAULT_URL)
    end

    context "RenderViews" do
      render_views
      it "includes the state full name" do
        state = State.all.sample

        get :index

        expect(response.body).to match /#{state.state_full}/
      end
    end
  end

  describe "GET show" do
    let!(:state) { State.all.sample }
    let(:state_id) { state.id }
    it "gets show" do
      get :show, id: state_id

      expect(response.status).to eq 200
    end

    it "GET :show" do
      get :show, id: state_id

      expect(response).to render_template(:show)
    end

    it "assigns @state" do
      get :show, id: state_id

      expect(assigns(:state)).to eq(state)
    end

    it "assigns @promo_urls" do
      get :show, id: state_id

      expect(assigns(:promo_urls)).to eq(UrlHelpers::PROMO_URLS)
    end

    context "RenderViews" do
      render_views
      it "includes the state full name" do
        get :show, id: state_id

        expect(response.body).to match /#{state.state_full}/
      end

      it "does not render the header" do
        get :show, id: state_id

        expect(response).to_not render_template(partial: "_header")
      end
    end
  end
end
