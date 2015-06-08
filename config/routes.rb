Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end

    authenticated :user do
      root to: 'dashboard#index', as: :authenticated_root
    end
  end

  resources :players, only: [:index]
end
