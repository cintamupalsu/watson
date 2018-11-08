Rails.application.routes.draw do
  
  get  '/signup', to: 'users#new'
  resources :users

  get '/minicog', to: 'alzheimer#minicog'
  
  get '/help', to:  'kanri#help'
  get '/about', to: 'kanri#about'
  
  root 'kanri#home'
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
