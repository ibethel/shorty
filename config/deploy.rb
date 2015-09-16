# This is a generated file.  Do not modify...or else!  :)

set :application, 'shorty'
set :repo_url, 'git@github.com:ibethel/shorty.git'

set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets}

set :bundle_flags, '--deployment' # Remove the `--quiet` flag

# Thanks to marinosbern!
# From http://stackoverflow.com/a/22234123/444774
desc 'Invoke a rake command on the remote server--Example usage: cap staging invoke[db:migrate]'
task :invoke, [:command] => 'deploy:set_rails_env' do |task, args|
  on primary(:app) do
    within current_path do
      with :rails_env => fetch(:rails_env) do
        rake args[:command]
      end
    end
  end
end

namespace :deploy do

  desc 'Restart passenger app'
  task :restart_passenger do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
      #invoke 'delayed_job_restart'
    end
  end

  after :publishing, :restart_passenger

  after :finishing, 'deploy:cleanup'
end
