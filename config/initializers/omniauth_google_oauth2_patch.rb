class OmniAuth::Strategies::GoogleOauth2 < OmniAuth::Strategies::OAuth2
  def raw_info
    @raw_info ||= access_token.get('https://www.googleapis.com/oauth2/v3/userinfo').parsed
  end
end
