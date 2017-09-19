Rails.application.routes.draw do
  devise_for :users, path: 'user', controllers: {
    sessions: 'backoffice/users/sessions',
    registrations: 'backoffice/users/registrations'
  },

  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register'
  }

  authenticated :user do
    root 'backoffice/dashboard#index', as: :authenticated_root
  end

  namespace :backoffice do
    resources :profiles
  end

  root to: 'visitors#index'
end
