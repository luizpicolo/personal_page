require "rails_helper"

RSpec.describe ArticlesController, :type => :routing do
  describe "routings" do
    it "routes to #show" do
      expect(:get => "/2015/10/10/test-slug").to route_to("articles#show", :year => "2015", :month => "10", :day => "10", :slug => "test-slug")
    end
  end
end
