Rails.application.routes.draw do
  devise_for :accounts
  get 'welcome/index'
  root 'welcome#index'
  
  resources :posts do
    member do
      put 'like' => 'posts#like'
    end
    resources :comments
  end

  

end
