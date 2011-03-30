Shorty::Application.routes.draw do
  
  get "users" => "users#index", :as => :my_account
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"
  match "/signout" => "sessions#destroy", :as => :signout

  resources :shorts do
    resources :visits
  end
  
  namespace :api do
    resources :shorts
  end
  
  root :to => "shorts#index"
  match '*a', :to => 'shorts#show'
end
