Rails.application.routes.draw do
  # devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1, path: "/" do
      devise_for :user, controllers: { session: "api/v1/sessions" }
      resources :users
      resources :gains
      resources :expenses
    end
  end
end
