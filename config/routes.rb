Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    passwords: 'user/passwords',
    registrations: 'user/registrations'
  }

  devise_for :stores, controllers: {
    sessions: 'store/sessions',
    passwords: 'store/passwords',
    registrations: 'store/registrations'
  }

  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
    passwords: 'admin/passwords',
    registrations: 'admin/registrations'
  }

  scope module: :user do
    root to: "homes#top"
    resources :stores, only: [:show] do
      resources :corporation_customers, only: [:index, :show]
      resources :individual_customers, only: [:index, :show]
    end
  end

  namespace :store do
    root to: "homes#top"
    resources :individual_customers, only:[:new, :index, :create, :show, :edit, :update]
    resources :corporation_customers, only: [:new, :index, :create, :show, :edit, :update]
  end

  namespace :admin do
    root to: "homes#top"
    resources :collaterals, only: [:index, :create, :edit, :update]
    resources :use_of_funds, only: [:index, :create, :edit, :update]
    resources :fund_types, only: [:index, :create, :edit, :update]
  end


end
