Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trumpets, only: [:index]
    end
  end
end
