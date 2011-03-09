Shorty::Application.routes.draw do
  
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"

  resources :shorts do
    resources :visits
  end
  
  root :to => "shorts#index"
  match '*a', :to => 'shorts#show'
end
