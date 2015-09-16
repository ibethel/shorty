require 'spec_helper'

describe Admin::ShortsController do
  context "access control" do
    it "requires a user to access the index action" do
      get :index
      expect(response).to redirect_to "/auth/google_oauth2"
    end

    it "requires a user to access the new action" do
      get :new
      expect(response).to redirect_to "/auth/google_oauth2"
    end

    it "requires a user to access the edit action" do
      get :edit, id: 1
      expect(response).to redirect_to "/auth/google_oauth2"
    end

    it "requires a user to access the create action" do
      post :create
      expect(response).to redirect_to "/auth/google_oauth2"
    end

    it "requires a user to access the update action" do
      put :update, id: 1
      expect(response).to redirect_to "/auth/google_oauth2"
    end
  end
end
