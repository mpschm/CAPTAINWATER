Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resource :profile, only: [:show]

  resources :water_ft_calculators, only: [:new, :create]

  resources :games, only: [:new, :create] do
    resources :plays, only: :index
    member do
      patch :launch # /games/:id/launch
    end
  end

  resources :plays, only: [:show, :new, :create] do
    resources :user_answers, only: [:create]
  end
end
