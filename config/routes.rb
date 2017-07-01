Rails.application.routes.draw do
  resources :products
  devise_for :stores, controllers: {
    sessions: 'stores/sessions',
    passwords: 'stores/passwords',
    registrations: 'stores/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
   root to: "stores#index"
   resources :stores, only: [:index] do
     resources :menus, only: [:index, :new, :create, :edit, :update, :destroy]
   end
end
