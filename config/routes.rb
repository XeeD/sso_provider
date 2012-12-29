SSOProvider::Engine.routes.draw do
  devise_for 'users',
             class_name: "SSOProvider::User",
             controllers: {registrations: 'sso_provider/registrations', sessions: 'sso_provider/sessions'}
  # omniauth client stuff
  match 'auth/:provider/callback', :to => 'authentications#create'
  match 'auth/failure', :to => 'authentications#failure'

  # Provider stuff
  match 'auth/single_sign_on/authorize' => 'auth#authorize'
  match 'auth/single_sign_on/access_token' => 'auth#access_token'
  match 'auth/single_sign_on/user' => 'auth#user'
  match 'oauth/token' => 'auth#access_token'
  # Account linkin    match 'authentications/:user_id/link' => 'authentications#link', :as => :link_account    match 'authentications/:user_id/add' => 'authentications#add', :as => :add_accoend
end
