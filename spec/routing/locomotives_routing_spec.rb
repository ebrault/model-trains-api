require "rails_helper"

RSpec.describe LocomotivesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/locomotives").to route_to("locomotives#index")
    end


    it "routes to #show" do
      expect(:get => "/locomotives/1").to route_to("locomotives#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/locomotives").to route_to("locomotives#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/locomotives/1").to route_to("locomotives#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/locomotives/1").to route_to("locomotives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/locomotives/1").to route_to("locomotives#destroy", :id => "1")
    end

  end
end
