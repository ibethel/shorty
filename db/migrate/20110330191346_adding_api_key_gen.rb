class AddingApiKeyGen < ActiveRecord::Migration
  def self.up
    User.all.each do |user|
      user.generate_api_key
      user.save
    end
  end

  def self.down
  end
end
