require 'spec_helper'

describe User do
  before(:each) do
    User.destroy_all # otherwise we get users with blank api keys messing things up
  end

  context "validations" do
    it "should validate presence of name" do
      user = User.new(api_key: "hello", email: "test@ibethel.org")

      expect(user.save).to eq false
      expect(user.errors.full_messages).to eq ["Name can't be blank"]
    end

    it "should validate name uniqueness only when provider is api" do
      user1 = User.create!(name: "someone", email: "test@ibethel.org")

      user2 = User.new(name: "someone", email: "test2@ibethel.org")
      expect(user2.save).to eq true

      user2.provider = "api"
      expect(user2.save).to eq false
      expect(user2.errors.full_messages).to eq ["Name has already been taken"]
    end

    it "should validate uniqueness of api key" do
      user = User.create!(name: "someone", email: "test@ibethel.org")

      api1 = user.api_key
      user2 = User.create!(name: "someone else", email: "test2@ibethel.org")
      user2.api_key = api1

      expect(user2.save).to eq false
      expect(user2.errors.full_messages).to eq ["Api key has already been taken"] # api key not unique
    end
  end

  it "should create user with given omniauth info" do
    auth_info = {
      "provider" => "some_provider",
      "uid" => "a uid",
      "info" => {"name" => "some user name", "email" => "test@ibethel.org"}
    }

    User.destroy_all
    expect(User.count).to eq 0

    User.create_with_omniauth(auth_info)
    expect(User.count).to eq 1

    user = User.first
    expect(user.provider).to eq "some_provider"
    expect(user.uid).to eq "a uid"
    expect(user.name).to eq "some user name"
  end

  it "should NOT create user with incorrect email" do
    auth_info = {
        "provider" => "some_provider",
        "uid" => "a uid",
        "info" => {"name" => "some user name", "email" => "test@notibethel.org"}
    }

    User.destroy_all
    expect(User.count).to eq 0
    expect { User.create_with_omniauth(auth_info) }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Email invalid email domain account")
    expect(User.count).to eq 0
  end

  describe "generating api key" do
    it "should generate a random one" do
      user = User.create!(name: "some user", email: "test@ibethel.org")
      old_key = user.api_key

      user.generate_api_key
      expect(user.api_key).to_not eq old_key
    end

    it "should generate one on create" do
      user = User.new(name: "some user", email: "test@ibethel.org")
      expect(user.api_key).to be_nil

      user.save!
      expect(user.api_key).to_not be_nil
    end
  end
end
