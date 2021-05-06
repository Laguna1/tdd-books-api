# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/authentication'
  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      resources :categories, only: %i[index create destroy]
      resources :books, only: %i[index create show update destroy]
      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
    end
  end
end
