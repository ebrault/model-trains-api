require 'rails_helper'

RSpec.describe "Wagons", type: :request do
  describe "GET /wagons" do
    it "works! (now write some real specs)" do
      get wagons_path
      expect(response).to have_http_status(200)
    end
  end
end
