require 'spec_helper'

describe TilesController, type: :controller do
  describe "GET tiles#index" do
    it "assigns @tiles" do
      get :index
      expect(assigns(:tiles).length).to eq(8 * 8)
    end

    it "responds with a 200 HTTP status code" do
      get :index
      expect(response).to be_success
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
