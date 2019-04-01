# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  namespace :owner do
    get 'dashboard/show'
  end
  root to: 'pages#home'
  devise_for :users

  resource :profile, only: [:show]

  resources :recipes, only: [:index, :show] do
    resources :copies, only: [:create]
  end

  resources :contributions, only: [:index]

  namespace :owner do
    resource :dashboard, only: [:show]

    resources :recipes, only: [:new, :create, :edit, :update, :destroy] do
      resources :contributions, only: [:new, :create]
      resources :steps, only: [:new, :create]
    end

    resources :steps, only: [:edit, :update, :destroy] do
      resources :doses, only: [:new, :create]
    end

    resources :doses, only: [:update, :destroy]

    resources :changes_proposals, only: [:show] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
