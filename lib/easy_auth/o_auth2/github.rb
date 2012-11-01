require 'easy_auth/github/engine'

module EasyAuth
  def self.o_auth2_github_identity_model(controller)
    EasyAuth::Identities::OAuth2::Github
  end

  module OAuth2::Github
    extend ActiveSupport::Autoload
    autoload :Controllers
  end

  module Controllers::Sessions
    include EasyAuth::OAuth2::Github::Controllers::Sessions
  end

  module Models::Identities::OAuth2
    autoload :Github
  end
end
