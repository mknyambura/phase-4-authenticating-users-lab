Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

end
