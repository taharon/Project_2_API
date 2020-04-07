require 'rails_helper'

RSpec.describe "PlayedGames", type: :request do
  describe "GET /played_games" do
    it "works! (now write some real specs)" do
      get played_games_path
      expect(response).to have_http_status(200)
    end
  end
end
