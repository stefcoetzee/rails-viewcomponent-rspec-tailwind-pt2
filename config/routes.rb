Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "teams#index"

  resources :teams do
    resources :athletes, only: [:new, :create, :index, :destroy]
  end

  resources :athletes, only: [:show, :edit, :update]
end
