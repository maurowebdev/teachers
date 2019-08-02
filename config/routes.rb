Rails.application.routes.draw do
  resources :students
  resources :cities
  root 'home#index'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
