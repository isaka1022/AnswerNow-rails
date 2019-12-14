Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions, only: [:index, :show, :create, :destroy]
  resources :answers, only: [:index, :show, :create, :destroy]
end
