Rails.application.routes.draw do
  root to: 'profile#index'
  devise_for :users
end
