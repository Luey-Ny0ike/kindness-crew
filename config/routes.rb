Rails.application.routes.draw do
  resources :jobs do
    resources :comments
  end
  devise_for :volunteers, controllers: {
    sessions: 'volunteer/sessions', confirmations: 'volunteer/confirmations', registrations: 'volunteer/registrations', unlocks: 'volunteer/unlocks', omniauth_callbacks: 'volunteer/omniauth_callbacks'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
