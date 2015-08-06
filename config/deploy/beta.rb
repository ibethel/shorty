# This is a generated file.  Do not modify...or else!  :)

set :stage, :beta
set :rails_env, :beta # workaround for RAILS_ENV= being blank in delayed job tasks
set :deploy_to, '/sites/shorty/beta'
set :linked_files, ['.env.beta']
set :rvm_ruby_version, '2.2.2'
set :ssh_options, {port: 4774}

server '162.243.43.149', roles: %w{web app db}, user: 'deploy' # server: web_1

namespace :deploy do
  Rake::Task["deploy:migrate"].clear_actions # Don't run migrations...just do the reload.
  desc 'Overrides db:migrate to just run db:reload'
  task :migrate => [:set_rails_env] do
    on primary fetch(:migration_role) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, "db:reload"
        end
      end
    end
  end
end
