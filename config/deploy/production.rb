# This is a generated file.  Do not modify...or else!  :)

set :stage, :production
set :rails_env, :production # workaround for RAILS_ENV= being blank in delayed job tasks
set :deploy_to, '/sites/shorty/production'
set :linked_files, ['.env.production']
set :rvm_ruby_version, '2.2.2'
set :ssh_options, {port: 4774}

server '104.131.109.128', roles: %w{web app db}, user: 'deploy' # server: web_1
