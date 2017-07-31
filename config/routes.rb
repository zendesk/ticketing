Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: "home#index"
  post 'tickets/new' => 'tickets#create'
  post 'comments' => 'comments#create'

  resources :tickets do
    resources :comments
  end
end
