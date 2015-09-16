# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.in?(%w(development test))
  Rails.application.config.secret_token = 'This is insecure, please do not ever use in a publicly available application!'
else
  Rails.application.config.secret_token = ENV['RAILS_SECRET_TOKEN'] || raise('No secret token specified.  :(')
  raise('Secret token is too short.  :(') if Rails.application.config.secret_token.length < 30
end