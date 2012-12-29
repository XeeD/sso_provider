Rails.application.routes.draw do
  mount SSOProvider::Engine => "/"
end
