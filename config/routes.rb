Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'auth/:provider/callback', to: 'users#create'
      resource :user, only: [:show]
      resources :movies
      resources :tickets
      resources :screens
      resources :seats
      resources :schedules
      resources :reservations
    end
  end
end
