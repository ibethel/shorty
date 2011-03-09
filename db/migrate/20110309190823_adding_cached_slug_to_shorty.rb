class AddingCachedSlugToShorty < ActiveRecord::Migration
  def self.up
    add_column :shorts, :cached_slug, :string
  end

  def self.down
    remove_column :shorts, :cached_slug
  end
end
