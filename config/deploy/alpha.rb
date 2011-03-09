server "173.255.215.22", :app, :web, :db, primary: true
set :deploy_to, "/sites/alpha.bcrr.us"
set :rails_env, "alpha"