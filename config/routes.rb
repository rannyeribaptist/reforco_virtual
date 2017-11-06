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
    resources :lessons
    resources :profiles
    resources :configs
    resources :exercises
  end

  delete 'apostille/:id' => 'backoffice/lessons#destroy_apostille', as: :destroy_apostille
  delete 'discipline/:id' => 'backoffice/configs#destroy_discipline', as: :destroy_discipline
  delete 'grade/:id' => 'backoffice/configs#destroy_grade', as: :destroy_grade

  root to: 'visitors#index'
end
