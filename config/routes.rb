Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  get :logged_in, to: 'sessions#logged_in?'
  delete :logged_out, to: 'sessions#logged_out?'

  root :to => 'api/v1/posts#index'

  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
        resources :votes
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :comments do
        resources :votes
      end
    end
  end
  
end
