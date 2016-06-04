Rails.application.routes.draw do
  root 'static_pages#dashboard'

  devise_for :users, controllers: { sessions: 'users/sessions' }


  resources :users
  resources :bank_items
  resources :groceries


end
