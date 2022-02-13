# This is a generated file.  Do not modify...or else!  :)

set :stage, :preview
set :rails_env, :preview # workaround for RAILS_ENV= being blank in delayed job tasks
set :deploy_to, '/sites/shorty/preview'
set :linked_files, ['.env.preview']
set :rvm_ruby_version, '2.5.9'
set :ssh_options, {port: 4774}

server '162.243.43.149', roles: %w{web app db}, user: 'deploy' # server: web_1
