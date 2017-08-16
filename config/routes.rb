Rails.application.routes.draw do

  root :to => 'dashboards#index'

  resources :dashboards
  resources :customers
  resources :orders
  resources :staffs
  resources :salaries
  resources :measurements

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
