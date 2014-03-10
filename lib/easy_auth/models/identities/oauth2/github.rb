module EasyAuth::Models::Identities::Oauth2::Github
  def account_attributes_map
    { :email => 'email', :username => 'login', :full_name => 'name', :avatar_url => 'avatar_url', :location => 'location' }
  end

  def authorize_url
    'https://github.com/login/oauth/authorize'
  end

  def oauth2_scope
    'user'
  end

  def account_attributes_url
    '/user'
  end

  def token_url
    'https://github.com/login/oauth/access_token'
  end

  def site_url
    'https://api.github.com'
  end

  def retrieve_uid(account_attributes)
    account_attributes['email']
  end
end
