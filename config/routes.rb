Rails.application.routes.draw do
  root 'pages#home'
  resources :comments, only: [:create, :destroy]
end
