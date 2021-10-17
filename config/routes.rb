Rails.application.routes.draw do

  root 'moods#index'



  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :moods
      resources :meditation_logs
      resources :affirmations
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
