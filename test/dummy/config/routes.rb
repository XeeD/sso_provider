Rails.application.routes.draw do

  mount SsoProviderEngine::Engine => "/sso-provider-engine"
end
