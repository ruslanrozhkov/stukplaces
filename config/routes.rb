Rails.application.routes.draw do
  resources :places
  resources :reviews
  get 'dashboard' => 'pages#dashboard'
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
