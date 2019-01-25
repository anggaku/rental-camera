Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :products
  resources :availability_products
  resources :brand_products
  resources :category_products
  root 'site#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
