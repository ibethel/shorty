require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '454507292205-ve8b7322mkkcomb324jnq6hq72l2eg14.apps.googleusercontent.com', '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'
end
OmniAuth.config.full_host = Rails.env.production? ? 'https://bcrr.us' : 'http://localhost:3000'
