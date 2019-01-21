require 'rails_helper'

RSpec.describe "Locomotives", type: :request do
  describe "GET /locomotives" do
    it "works! (now write some real specs)" do
      get locomotives_path
      expect(response).to have_http_status(200)
    end
  end
end
