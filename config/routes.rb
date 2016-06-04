Rails.application.routes.draw do

  root 'static_pages#dashboard'

  resources :users
  resources :bank_items

end
