Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
      end
    end
  end
  
end
