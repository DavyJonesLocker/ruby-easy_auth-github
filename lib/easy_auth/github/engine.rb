module EasyAuth::Github
  class Engine < ::Rails::Engine
    isolate_namespace EasyAuth::Github

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
  end
end
