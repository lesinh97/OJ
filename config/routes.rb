Rails.application.routes.draw do


  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/edit', to: 'users#edit'
  put '/edit', to: 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'clean_blogs#index'
  get  'about' 	=> 'clean_blogs#about'
  get  'post' 	=> 'clean_blogs#post'
  get  'contact' 	=> 'clean_blogs#contact'
  #session  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
