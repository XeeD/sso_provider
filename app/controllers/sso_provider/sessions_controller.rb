module SSOProvider
  class SessionsController < Devise::SessionsController
    def destroy
      session[:after_sign_out_url] = params[:back] || request.referrer
      super
    end
  end
end
