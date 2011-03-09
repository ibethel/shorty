Shorty::Application.routes.draw do
  

  resources :shorts do
    resources :visits
  end
  
  root :to => "shorts#index"
  match '*a', :to => 'shorts#show'
end
