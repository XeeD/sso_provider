module SSOProvider
  module Helpers
    module Controller
      def after_sign_out_path_for(resource_or_scope)
        session[:after_sign_out_url] || main_app.root_path
      end
    end
  end
end
