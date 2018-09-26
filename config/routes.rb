Rails.application.routes.draw do
  get 'users/sign_up', to: "users#new"
  post 'users', to: "users#create"
  resources :histories

  root "histories#index"
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
