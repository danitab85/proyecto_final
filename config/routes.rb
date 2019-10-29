Rails.application.routes.draw do

  resources :contents
  get 'users/index'
  get 'schools/index'

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

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root 'products#index'

end
