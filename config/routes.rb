Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :user, only: [:show]
      resources :movies
      resources :tickets
      resources :screens
      resources :seats do
        collection do
          get :screen
        end
      end
      resources :schedules do
        collection do
          get :week
        end
      end
      resources :reservations do
      collection do
        get :user
      end
    end
    end
  end
  post 'auth/:provider/callback', to: 'api/v1/users#create'
end
