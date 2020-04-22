Rails.application.routes.draw do

  get 'messages/index'
  get 'messages/show'
  get 'messages/new'
  get 'messages/edit'
  get 'index/show'
  get 'index/new'
  get 'index/edit'
  devise_for :users
  root to: 'tasks#index'
  resources :'tasks'
  resources :'likes'
  resources :'follows'
  resources :'users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
