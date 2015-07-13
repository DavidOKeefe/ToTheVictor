Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end

    authenticated :user do
      root to: 'scorecards#new', as: :authenticated_root
    end
  end

  resources :players, only: [:index, :edit, :update, :destroy]
  resource :scorecard_player_builders, only: [:new, :create]
  resources :scorecards, only: [:new, :create]
end
