require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '793333417362-771ti5p488f8j7vlk8astcklf6qdr1al.apps.googleusercontent.com', 'dtDXeYfrYPsuYByeBUmAIgGl', { :hd => "ibethel.org" }
  # provider :google_oauth2, '454507292205-ve8b7322mkkcomb324jnq6hq72l2eg14.apps.googleusercontent.com', '-4YKw7E7dsP7Vlcbma-aUKBJ', { :hd => "ibethel.org" }

end
