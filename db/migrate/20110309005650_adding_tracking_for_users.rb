class AddingTrackingForUsers < ActiveRecord::Migration
  def self.up
    add_column :visits, :ipaddress, :string
    add_index :shorts, :contracted
    add_index :visits, :short_id
  end

  def self.down
    remove_index :shorts, :contracted
    remove_index :visits, :short_id
    remove_column :visits, :ipaddress
  end
end
