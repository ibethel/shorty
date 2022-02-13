source "http://rubygems.org"
ruby "2.5.9"

################# Must be at top ###################
gem 'dotenv-rails'
################# Must be at top ###################

gem "rails", "4.2.11"

# Bundle edge Rails instead:
# gem "rails", :git => "git://github.com/rails/rails.git"

# gem "sqlite3"
gem "pg", "~> 0.2"
gem "faker"
gem "omniauth-google-oauth2"
gem "nokogiri", "~> 1.6.6.2"
gem "friendly_id"
gem "ruby-openid-apps-discovery"
# gem "ruby-mysql"
gem "kaminari"
gem "awesome_print"
gem "classy_enum"
gem "sprockets", "~> 3.1.0"
gem "sprockets-rails", "~> 2.3.1"

group :development, :test do
	gem "rspec-rails"
	gem "factory_girl_rails"
	gem "thin"

	gem 'web-console', '~> 2.0'
end

# to use locally committed gem, use `bundle config local.pvcglue ~/projects/pvcglue`
# and `bundle config --delete local.pvcglue` to restore using remote repo
# See http://ryanbigg.com/2013/08/bundler-local-paths/
# and http://bundler.io/v1.3/bundle_config.html
gem "tilt", "<2.0.0"
gem 'pvcglue', "~> 0.1.25", :group => :development
# gem 'pvcglue', "~> 0.1.25", :github => 'talyric/pvcglue', :branch => 'master', :group => :development
# gem 'pvcglue', "~> 0.1.25", :path => "~/projects/pvcglue" , :group => :development

gem 'pvcglue_dbutils', "~> 0.5.4"
# gem 'pvcglue_dbutils', "~> 0.5.2", :github => 'talyric/pvcglue_dbutils', :branch => 'master' # must be available in all environments
