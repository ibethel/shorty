Shorty::Application.routes.draw do
  # match "/auth/:provider/callback" => "sessions#create", via: :post
  match "/auth/:provider/callback" => "sessions#create", via: :get
  match "/auth/failure" => "sessions#failure", via: :get
  match "/signout" => "sessions#destroy", :as => :signout, via: :get

  namespace :admin do
    resources :shorts do
      resources :visits
    end

    resources :users
    resources :embedded_forms
  end

  resources :embedded_forms, only: :show
  resources :shorts, only: :show

  namespace :api do
    resources :shorts
  end

  root :to => redirect("http://bethel.global/")
  match '/admin/', :to => "admin/shorts#index", via: :get, :as => :admin_root
  match '/admin/*a', :to => 'admin/shorts#show', via: :get
  match '*a', :to => 'static#show', via: :get
end
