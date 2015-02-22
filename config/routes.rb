Rails.application.routes.draw do

  resources :quotes

  resources :suppliers do
  	resources :materials
  end

  resources :customers do
    resources :contacts
  end

  resources :orders do
    collection { post :import}
  end

  resources :templates

  resources :activities




  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
