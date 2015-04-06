require 'spec_helper'

describe ShortsController do
  context "access control" do
    it "requires a user to access the index action" do
      get :index
      expect(response).to redirect_to "/auth/google_apps"
    end

    it "requires a user to access the new action" do
      get :new
      expect(response).to redirect_to "/auth/google_apps"
    end

    it "requires a user to access the edit action" do
      get :edit, id: 1
      expect(response).to redirect_to "/auth/google_apps"
    end

    it "requires a user to access the create action" do
      post :create
      expect(response).to redirect_to "/auth/google_apps"
    end

    it "requires a user to access the update action" do
      put :update, id: 1
      expect(response).to redirect_to "/auth/google_apps"
    end

    it "does not require a user to access the show action" do
      short = Short.create!(expanded: "http://google.com")
      get :show, a: short.contracted
      expect(response).to_not redirect_to "/auth/google_apps"
    end
  end

  context "showing a shorty" do
    let(:short) { Short.create!(expanded: "http://google.com") }

    it "redirects to the visit report if url ends in plus" do
      get :show, a: short.contracted + "+"
      expect(response).to redirect_to short_visits_path(short)
    end

    it "redirects to the short path otherwise" do
      get :show, a: short.contracted
      expect(response).to redirect_to "http://google.com"
    end

    it "renders a 404 if the short is not found" do
      get :show, id: short.id
      expect(response.success?).to eq false
    end
  end
end
