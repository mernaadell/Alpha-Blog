Rails.application.routes.draw do
resources :articles;
  get 'pages/about'
  get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
