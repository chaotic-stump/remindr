Rails.application.routes.draw do
  get 'todo_lists/index'

  get 'todo_lists/show'

  get 'todo_lists/edit'

  get 'todo_lists/new'

  get 'todo_items/idex'

  get 'todo_items/show'

  get 'todo_items/edit'

  get 'todo_items/new'

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
