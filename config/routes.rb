Shorty::Application.routes.draw do

  match "/auth/:provider/callback" => "sessions#create", via: :post
  match "/auth/failure" => "sessions#failure", via: :get
  match "/signout" => "sessions#destroy", :as => :signout, via: :get

  resources :shorts do
    resources :visits
  end

  namespace :api do
    resources :shorts
  end

  resources :users

  root :to => "shorts#index"
  match '*a', :to => 'shorts#show', via: :get
end
