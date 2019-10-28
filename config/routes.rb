Rails.application.routes.draw do

  get 'schools/index'
  get 'users/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products, only: [:index, :show] do
    resources :orders, only: :create
  end

  resources :orders, only: [:index, :destroy] do
  	collection do
  		get 'clean'
      
  	end
  end

  resources :billings, only: [] do
    collection do
      get 'pre_pay'
    end
  end

  resources :billings, only: [] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end

  devise_for :users

  root 'products#index'

end
