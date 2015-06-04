require 'spec_helper'

describe ShortsController do
  context "acces control" do
    it "does not require a user to access the show action" do
      short = Short.create!(expanded: "http://google.com")
      get :show, id: short.id
      expect(response).to_not redirect_to "/auth/google_oauth2"
    end
  end

  context "showing a shorty" do
    let(:short) { Short.create!(expanded: "http://google.com") }

    it "redirects to the short path" do
      get :show, id: short.id
      expect(response).to redirect_to "http://google.com"
    end

    it "renders a 404 if the short is not found" do
      get :show, id: short.id.to_i + 1
      expect(response.success?).to eq false
    end
  end
end
