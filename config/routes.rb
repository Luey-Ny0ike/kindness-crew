Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :employers, controllers: {
    sessions: 'employer/sessions', confirmations: 'employer/confirmations', registrations: 'employer/registrations', unlocks: 'employer/unlocks'
  }
  devise_for :volunteers, controllers: {
    sessions: 'volunteer/sessions', confirmations: 'volunteer/confirmations', registrations: 'volunteer/registrations', unlocks: 'volunteer/unlocks', omniauth_callbacks: 'volunteer/omniauth_callbacks'
  }
  resources :jobs
  resources :employers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
