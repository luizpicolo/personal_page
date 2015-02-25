require "rails_helper"

RSpec.describe PortfolioController, :type => :routing do
  describe "routings" do
    it "routes to #index" do
      expect(:get => "/portfolio").to route_to("portfolio#index")
    end
  end
end
