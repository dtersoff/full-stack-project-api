require 'rails_helper'

RSpec.describe "Servants", type: :request do
  describe "GET /servants" do
    it "works! (now write some real specs)" do
      get servants_path
      expect(response).to have_http_status(200)
    end
  end
end
