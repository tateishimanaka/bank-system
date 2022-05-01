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
  end

  namespace :store do
    root to: "homes#top"
  end

  namespace :admin do
      root to: "homes#top"
  end


end
