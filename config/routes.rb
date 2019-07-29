Rails.application.routes.draw do
	resources :articles
  root 'pages#index'
end
