Rails.application.routes.draw do

  resources :suppliers do
  	resources :materials
  end

  resources :customers

  resources :orders

  resources :templates

  resources :activities


  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
