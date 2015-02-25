require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do

  describe "GET show" do
    it "returns http success" do
      get :show, :year => 2015, :month => 10, :day => 10, :slug => "test"
      expect(response).to have_http_status(:success)
    end
  end

end
