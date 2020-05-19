Rails.application.routes.draw do
  devise_for :users

  resources :announces
  root to: 'announces#index'
  resources :my_announcements
end
