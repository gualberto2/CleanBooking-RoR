Rails.application.routes.draw do
  resources :posts
  root "static_pages#landing_page"

  get "dashboard", to: "static_pages#dashboard"

  get "/auth/auth0/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "/auth/logout" => "auth0#logout"
end
