# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Short.destroy_all

1.upto(50).each do |num|
  puts "creating short #{num} of 50"
  short = Short.create(expanded: "http://#{Faker::Internet.domain_name}")

  total_visits = Random.new.rand(12..100)
  1.upto(total_visits).each do |n|
    puts "\tadding #{n} of #{total_visits} visits"
    short.record_visit("http://#{Faker::Internet.domain_name}", "0.0.0.0")
  end
end

User.destroy_all

1.upto(10).each do |num|
  put "creating user #{num} of 10"
  User.create(name: Faker::Name.name)
end
