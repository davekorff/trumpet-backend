Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trumpets, only: [:index, :show, :create, :update, :destroy]
      resources :users, only: [:index, :show, :create]
      resources :reactions, only: [:index, :create, :destroy]
    end
  end
end
