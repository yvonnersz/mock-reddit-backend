Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  get :logged_in, to: 'sessions#logged_in?'
  delete :logged_out, to: 'sessions#logged_out?'

  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
      end
    end
  end
  
end
