Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  root 'pages#about'
end
