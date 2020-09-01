Rails.application.routes.draw do
  devise_for :accounts
  get 'welcome/index'
 
  resources :posts do
    account do
      put "like" => "posts#like"
    end
  end
  
    resources :comments


  root 'welcome#index'

end
