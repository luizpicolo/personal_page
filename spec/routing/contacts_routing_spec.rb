require "rails_helper"

RSpec.describe ContactsController, :type => :routing do
  describe "routings" do
    it "routes to #index" do
      expect(:get => "/contacts").to route_to("contacts#index")
    end
  end
end
