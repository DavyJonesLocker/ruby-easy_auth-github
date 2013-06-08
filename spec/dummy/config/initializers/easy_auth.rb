EasyAuth.config do |c|
  c.oauth2_client :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET']
end
