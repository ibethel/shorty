class CreateShorts < ActiveRecord::Migration
  def self.up
    create_table :shorts do |t|
      t.string :expanded
      t.string :contracted

      t.timestamps
    end
  end

  def self.down
    drop_table :shorts
  end
end
