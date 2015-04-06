require 'spec_helper'

describe VisitsController do
  context "access control" do
    it "requires user to be present" do
      get :index
      expect(response).to redirect_to "/auth/google_apps"
    end
  end
end
