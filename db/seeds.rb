# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Short.delete_all

1.upto(50).each do |num|
  short = Short.create(expanded: "http://#{Faker::Internet.domain_name}")
  
  1.upto(Random.new.rand(12..500)).each do |n|
    short.record_visit("http://#{Faker::Internet.domain_name}")
  end
end