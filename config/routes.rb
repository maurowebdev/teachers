Rails.application.routes.draw do

  resources :types
  root 'home#index'
  get 'home/index'
  devise_for :users, controllers: {
    registrations: "registrations"
  }
  #DEVISE esconde lops controladores, para mostrarlos utilizamos la línea controllers: {}
  resources :students
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
