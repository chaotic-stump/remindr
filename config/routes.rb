Rails.application.routes.draw do
root 'static_pages#dashboard'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :todo_lists  do
    resources :todo_items
  end
  resources :users
  resources :bank_items
  resources :groceries

  mount Commontator::Engine => '/commontator'

end
