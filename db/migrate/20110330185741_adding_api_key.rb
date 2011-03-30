class AddingApiKey < ActiveRecord::Migration
  def self.up
    add_column :users, :api_key, :string
    add_index :users, :api_key, :unique => true
  end

  def self.down
    remove_index :users, :api_key
    remove_column :users, :api_key
  end
end
