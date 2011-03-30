class AddingUserToCreate < ActiveRecord::Migration
  def self.up
    add_column :shorts, :user_id, :integer
  end

  def self.down
    remove_column :shorts, :user_id
  end
end
