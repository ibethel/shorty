namespace :db do
  desc "Rebuild (drop, create, migrate) db. Then seed and clone."
  task :rebuild => :environment do
    raise "This task can not be run in this environment.  (Hint:  Use 'db:reload' for heroku.)" unless %w[development].include? Rails.env

    puts "Dropping the db..."
    Rake::Task['db:drop'].invoke
    puts "Creating the db..."
    Rake::Task['db:create'].invoke
    puts "Migrating the db..."
    Rake::Task['db:migrate'].invoke
    puts "Seeding the db..."
    Rake::Task['db:seed'].invoke
    puts "Cloning the test db..."
    Rake::Task['db:test:clone'].invoke
    puts "Done."
  end
end
