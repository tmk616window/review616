Rails.application.routes.draw do

  devise_for :users
  root to: 'tasks#index'
  resources :'user_pages'
  resources :'tasks'
  resources :'likes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
