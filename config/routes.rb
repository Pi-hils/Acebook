Rails.application.routes.draw do
  devise_for :accounts
  get 'welcome/index'
 
  resources :posts do
    resources :comments
  end

  root 'welcome#index'

end
