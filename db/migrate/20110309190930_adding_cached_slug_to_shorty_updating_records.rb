class AddingCachedSlugToShortyUpdatingRecords < ActiveRecord::Migration
  def self.up
    Short.all.each {|short| short.save}
  end

  def self.down
  end
end
