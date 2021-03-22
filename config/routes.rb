Rails.application.routes.draw do
  root "homepage#index"

  resources :homepage, only: :index

  namespace :api do
    namespace :v1 do
      get "recipes/index"
      post "recipes/create"
      get "/show/:id", to: "recipes#show"
      delete "/destroy/:id", to: "recipes#destroy"
    end
  end
end
