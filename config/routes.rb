Rails.application.routes.draw do
  devise_for :users, controllers: {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :questions, only: [:index, :show, :new, :create, :destroy]
  resources :answers, only: [:index, :show, :new, :create, :destroy]
end
