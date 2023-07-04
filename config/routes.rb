Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'auth/:provider/callback', to: 'users#create'
      resources :movies
    end
  end
end
