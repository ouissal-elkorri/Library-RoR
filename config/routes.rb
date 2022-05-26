Rails.application.routes.draw do
  resources :materiels
  resources :documents
  root "home#index"
  get 'logedin', to: 'home#logedin'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'home#logedin'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'home#logedin', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  get 'emprunter', to:'documents#emprunter'
  #get 'search', to: 'materiels#search' 
  get 'search', to: 'documents#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
