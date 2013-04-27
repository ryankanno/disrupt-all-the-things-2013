RrrServer::Application.routes.draw do
  match 'users/auth/:provider/callback' => 'users#create'
  devise_for :users  

  resources :users, only: :index
  resources :items, :only => [:index, :new, :create, :show]
  
  resources :items, :only => [:index, :create, :show]
end
