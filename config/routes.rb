Rails.application.routes.draw do
  devise_for :users, controllers: {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :users, only: [:show, :edit, :update]
  resources :questions, only: [:index, :show, :new, :create, :destroy]
  resources :answers, only: [:index, :show, :new, :create, :destroy]
  get '/search' => 'questions#search'
end
