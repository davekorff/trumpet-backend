Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trumpets, only: [:index, :show, :create, :update]
      resources :users, only: [:index, :show]
    end
  end
end
