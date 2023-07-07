Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :user, only: [:show]
      resources :movies
      resources :tickets
      resources :screens
      resources :seats
      resources :schedules
      resources :reservations
    end
  end
  post 'auth/:provider/callback', to: 'api/v1/users#create'
end
