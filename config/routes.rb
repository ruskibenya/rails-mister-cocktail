Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/my_cocktails", to: "pages#my_cocktails", as: "my_cocktails"

  resources :cocktails, only: [:new, :create, :index, :edit, :update, :destroy, :show] do
    put :favorite, on: :member
    resources :reviews, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
