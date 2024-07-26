Rails.application.routes.draw do
  get 'session_debug/show_session'
  resources :salary_deductions
  resources :staffs

  # Web application routes for Staffs
  resources :staffs do
    resources :salary_deductions, only: [:new, :create]
  end

  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # API routes
  namespace :api do
    namespace :v1 do
      resources :staffs, only: [:index, :create, :show, :update, :destroy]
      resources :salary_deductions, only: [:index, :create, :show, :update, :destroy]
    end
  end
end
