Rails.application.routes.draw do
	resources :articles
	resources :users, except: [:new]
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
