Rails.application.routes.draw do


  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }


  root to: 'public/rakuten_games#index'

  namespace :admin do
    resources :users,only: [:index,:show]
    resources :rakuten_games,only: [:index,:show,:create] do
      resources :reviews,only: [:show,:destroy] do
        resources :comments,only: [:destroy]
        member do
          delete :user_destroy
        end
      end
    end
  end

  scope module: :public do
    resources :users,only: [:show,:edit,:update]
    resources :rakuten_games,only: [:show,:create] do
      resources :reviews,only: [:create,:index,:show,:update,:edit,:destroy] do
        resources :comments, only: [:destroy,:create]

      end
      collection do
        get :search
        post :review
      end
    end

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
