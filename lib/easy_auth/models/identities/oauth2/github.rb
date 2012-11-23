module EasyAuth::Models::Identities::Oauth2::Github
  def authorize_url
    'https://github.com/login/oauth/authorize'
  end

  private

  def user_info_url
    '/user'
  end

  def token_url
    'https://github.com/login/oauth/access_token'
  end

  def site_url
    'https://api.github.com'
  end
end
