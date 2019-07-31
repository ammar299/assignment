Rails.application.routes.draw do
	resources :articles
	resources :users, except: [:new]
  root 'pages#index'
  get 'signup', to: 'users#new'
end
