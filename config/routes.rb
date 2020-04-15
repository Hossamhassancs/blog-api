Rails.application.routes.draw do
  resources :tags
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
    resources :posts do
      resources :comments
      resources :taggings 
    end
end
