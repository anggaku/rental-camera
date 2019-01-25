Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
  resources :availability_products
  resources :brand_products
  resources :category_products
  root 'site#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
