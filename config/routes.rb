Rails.application.routes.draw do
  root to: "roles#index"

  devise_for :users
  resources :roles, except: :show
end
