Rails.application.routes.draw do
    post 'signup', to: 'users#create'
    post 'auth/login', to: 'authentication#authenticate'
    resources :posts do
      resources :comments
    end
  
  
end
