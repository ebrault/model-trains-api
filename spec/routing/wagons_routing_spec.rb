require "rails_helper"

RSpec.describe WagonsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wagons").to route_to("wagons#index")
    end


    it "routes to #show" do
      expect(:get => "/wagons/1").to route_to("wagons#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wagons").to route_to("wagons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wagons/1").to route_to("wagons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wagons/1").to route_to("wagons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wagons/1").to route_to("wagons#destroy", :id => "1")
    end

  end
end
