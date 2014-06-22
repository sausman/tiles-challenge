require 'spec_helper'

describe ClicksController, type: :controller do
  describe "GET clicks#index" do
    before(:each) do
      11.times { FactoryGirl.create(:click) }
    end

    it "assigns @most_clicked_titles" do
      get :index

      expect(assigns(:most_clicked_titles).length).to eq(10)
    end

    it "responds with a 200 HTTP status code" do
      get :index

      expect(response).to be_success
    end

    it "renders the index template" do
      get :index

      expect(response).to render_template(:index)
    end

    it "renders the application layout for non-xhr requests" do
      get :index

      expect(response).to render_template(layout: 'application')
    end

    it "renders the application layout for non-xhr requests" do
      xhr :get, :index

      expect(response).to render_template(layout: false)
    end
  end

  describe "POST clicks#create" do
    it "creates a RegisterClickWorker job" do
      click = FactoryGirl.build(:click)

      expect {
        post :create, {click: {title: click.title}}
      }.to change(RegisterClickWorker.jobs, :size).by(1)
    end
  end
end
