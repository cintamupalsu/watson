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

  get  '/conversation',      to: 'watson#conversation'
  get  '/discovery',         to: 'watson#discovery'
  
  get  '/natural_language',  to: 'watson#natural_language'
  get  '/nl_category',       to: 'watson#nl_category'
  post '/nl_category',       to: 'watson#nl_category_result'
  get  '/nl_concept',        to: 'watson#nl_concept'
  post '/nl_concept',        to: 'watson#nl_concept_result'
  
  get  'speech_to_text',     to: 'watson#speech_to_text'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
