Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "restaurants#index"
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end
end
