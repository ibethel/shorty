require 'spec_helper'

describe Admin::VisitsController do
  context "access control" do
    it "requires user to be present" do
      short = Short.create!(expanded: "http://yahoo.com")
      get :index, short_id: short.id
      expect(response).to redirect_to "/auth/google_oauth2"
    end
  end
end
