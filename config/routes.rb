Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :organizations, only: [:index]
  
  post "/login", to: 'users#login'
  post "/signup", to: 'users#new'
  get "/getuser", to: 'users#find_by_token'
end
