require 'spec_helper'

describe Admin::UsersController do
  describe "GET 'index'" do
    it "requires a user to access" do
      get 'index'
      expect(response).to redirect_to "/auth/google_oauth2"
    end
  end
end
