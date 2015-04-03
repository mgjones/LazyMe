require 'rails_helper'

RSpec.describe RefrigeratorsController, type: :controller do

  

  describe "GET #index" do
    it "routes correctly" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  

  describe "GET #show" do
    it "routes correctly" do
      expect(Refrigerator).to receive(:find).with("1") { p }
      get :show, id: 1
      p = Refrigerator.new
      expect(response.status).to eq(200)
    end

    
  end

  
end