Rails.application.routes.draw do
  devise_for :accounts
  get 'welcome/index'
 
  resources :posts

  root 'welcome#index'

end
