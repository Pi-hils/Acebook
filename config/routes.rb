Rails.application.routes.draw do
  devise_for :accounts
  get 'welcome/index'
  root 'welcome#index'
  
  resources :posts do
    member do
      get 'like', to: "posts#like"
      get 'unlike', to: "posts#unlike"
    end
    resources :comments
  end

  

end
