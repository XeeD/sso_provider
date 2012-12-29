require 'omniauth'
#require 'omniauth-google-oauth2'

module SSOProvider
  class Engine < ::Rails::Engine
    isolate_namespace SSOProvider

    initializer 'sso_provider.application_controller' do |app|
      ActiveSupport.on_load :action_controller do
        include SSOProvider::Helpers::Controller
      end
    end
  end
end
