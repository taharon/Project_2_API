require "rails_helper"

RSpec.describe GameInstancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/game_instances").to route_to("game_instances#index")
    end


    it "routes to #show" do
      expect(:get => "/game_instances/1").to route_to("game_instances#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/game_instances").to route_to("game_instances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/game_instances/1").to route_to("game_instances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/game_instances/1").to route_to("game_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_instances/1").to route_to("game_instances#destroy", :id => "1")
    end

  end
end
