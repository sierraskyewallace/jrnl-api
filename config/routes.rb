Rails.application.routes.draw do

 



  namespace :api do
    namespace :v1 do
      resources :users  
        resources :moods
      
      post '/login', to: 'users#login'
      get "/auto_login", to: "users#auto_login"
      get "/profile", to: "users#profile"
      resources :affirmations
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
