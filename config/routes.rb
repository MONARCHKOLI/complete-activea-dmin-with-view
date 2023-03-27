Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config 
  ActiveAdmin.routes(self)
  resources :check_ins, only: [:new, :create, :show, :update]
  resources :screenings do
    resources :questions do
      resources :answers
    end
  end
  root to: "home#index"
  
end
