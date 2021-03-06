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
    # resources :stores, only: [:show] do
    resources :corporation_customers, only: [:index, :show] do
      get 'corporation_projects/new' => 'corporation_project#new', as: 'corporation_project_new'
      post 'corporation_projects' => 'corporation_projects#create', as: 'corporation_project_create'
      get 'corporation_projects/:id' => 'corporation_projects#show', as: 'corporation_project_show'
      get 'corporation_projects/edit/:id' => 'corporation_projects#edit', as: 'corporation_project_edit'
      patch 'corporation_projects/:id' => 'corporation_projects#update', as: 'corporation_project_update'
      # resources :corporation_projects, only: [:new, :create, :show, :edit, :update]
    end

    resources :individual_customers, only: [:index, :show]
  end

  namespace :store do
    root to: "homes#top"
    post 'corporation_customers' => 'corporation_customers#create', as: 'corporation_customer_create'
    get 'corporation_customers' => 'corporation_customers#index', as: 'corporation_customers_index'
    get 'corporation_customers/new' => 'corporation_customers#new', as: 'corporation_customer_new'
    get 'corporation_customers/:id' => 'corporation_customers#show', as: 'corporation_customer_show'
    get 'corporation_customers/edit/:id' => 'corporation_customers#edit', as: 'corporation_customer_edit'
    patch 'corporation_customers/:id' => 'corporation_customers#update', as: 'corporation_customer_update'

    post 'individual_customers' => 'individual_customers#create', as: 'individual_customer_create'
    get 'individual_customers' => 'individual_customers#index', as: 'individual_customers_index'
    get 'individual_customers/new' => 'individual_customers#new', as: 'individual_customer_new'
    get 'individual_customers/:id' => 'individual_customers#show', as: 'individual_customer_show'
    get 'individual_customers/edit/:id' => 'individual_customers#edit', as: 'individual_customer_edit'
    patch 'individual_customers/:id' => 'individual_customers#update', as: 'individual_customer_update'
  end

  namespace :admin do
    root to: "homes#top"
    resources :collaterals, only: [:index, :create, :edit, :update]
    resources :use_of_funds, only: [:index, :create, :edit, :update]
    resources :fund_types, only: [:index, :create, :edit, :update]
  end
end
