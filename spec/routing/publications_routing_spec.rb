require "rails_helper"

RSpec.describe PublicationsController, :type => :routing do
  describe "routings" do
    it "routes to #index" do
      expect(:get => "/publications").to route_to("publications#index")
    end
  end
end
