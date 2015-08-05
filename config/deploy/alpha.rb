# This is a generated file.  Do not modify...or else!  :)

set :stage, :alpha
set :rails_env, :alpha # workaround for RAILS_ENV= being blank in delayed job tasks
set :deploy_to, '/sites/shorty/alpha'
set :linked_files, ['.env.alpha']
set :rvm_ruby_version, '2.2.2'
set :ssh_options, {port: 4774}

server '162.243.59.145', roles: %w{web app db}, user: 'deploy' # server: web_1
