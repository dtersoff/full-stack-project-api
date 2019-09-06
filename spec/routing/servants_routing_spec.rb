require "rails_helper"

RSpec.describe ServantsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/servants").to route_to("servants#index")
    end


    it "routes to #show" do
      expect(:get => "/servants/1").to route_to("servants#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/servants").to route_to("servants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/servants/1").to route_to("servants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/servants/1").to route_to("servants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/servants/1").to route_to("servants#destroy", :id => "1")
    end

  end
end
