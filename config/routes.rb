RrrServer::Application.routes.draw do
  resources :users, only: :index
  resources :items, :only => [:index, :new, :create, :show]
  
  resources :items, :only => [:index, :create, :show]
end
