EasyAuth.config do |c|
  c.o_auth2_client :github, ENV['OAUTH_GITHUB_CLIENT_ID'], ENV['OAUTH_GITHUB_SECRET']
end
