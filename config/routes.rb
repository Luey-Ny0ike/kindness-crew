Rails.application.routes.draw do
  devise_for :volunteers, controllers: {
    sessions: 'volunteer/sessions', confirmations: 'volunteer/confirmations', registrations: 'volunteer/registrations', unlocks: 'volunteer/unlocks', omniauth_callbacks: 'volunteer/omniauth_callbacks'
  }
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
