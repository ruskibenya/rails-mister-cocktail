Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cocktails, only: [:new, :create, :index, :edit, :update, :destroy, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
