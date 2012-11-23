class Identities::Oauth2::Github < Identities::Oauth2::Base
  extend EasyAuth::Models::Identities::Oauth2::Github
  def self.authenticate(controller)
    debugger
    super
  end
end
