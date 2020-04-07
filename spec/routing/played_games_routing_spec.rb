require "rails_helper"

RSpec.describe PlayedGamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/played_games").to route_to("played_games#index")
    end


    it "routes to #show" do
      expect(:get => "/played_games/1").to route_to("played_games#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/played_games").to route_to("played_games#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/played_games/1").to route_to("played_games#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/played_games/1").to route_to("played_games#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/played_games/1").to route_to("played_games#destroy", :id => "1")
    end

  end
end
