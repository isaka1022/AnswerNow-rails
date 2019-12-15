Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :users, only: [:show, :edit, :update]
  resources :users do
    get :questions, on: :member
    get :answers, on: :member
  end
  resources :questions, only: [:index, :show, :new, :create, :destroy]
  resources :questions do
    get :search, on: :collection
  end
  resources :answers, only: [:index, :show, :new, :create, :destroy]
end
