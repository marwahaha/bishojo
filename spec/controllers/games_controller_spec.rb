require 'rails_helper'

RSpec.describe GamesController, :type => :controller do
  
  before(:each) do
    @game = FactoryGirl.create :game
  end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "POST create" do
    it "returns http success" do
      post :create, game: FactoryGirl.attributes_for(:game)
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, id: @game
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "GET edit" do
    it "returns http success" do
      get :edit, id: @game
      expect(response).to have_http_status(:success)
    end
  end
  
  
  describe "PUT update" do
    it "returns http success" do
      put :update, id: @game, game: FactoryGirl.attributes_for(:game)
      expect(response).to have_http_status(:redirect)
    end
  end
  
  describe "DELETE delete" do
    it "returns http success" do
      delete :destroy, id: @game
      expect(response).to have_http_status(:redirect)
    end
  end
  
end
