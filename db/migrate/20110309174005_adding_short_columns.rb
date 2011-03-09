class AddingShortColumns < ActiveRecord::Migration
  def self.up
    add_column :shorts, :title, :string
  end

  def self.down
    remove_column :shorts, :title
  end
end
