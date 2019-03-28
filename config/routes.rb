# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'tags/name:string'
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

    resources :steps, only: [:edit, :update, :destroy]

    resources :changes_proposals, only: [:show] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
