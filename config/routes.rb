RrrServer::Application.routes.draw do
  resources :users, only: :index
  resources :items, :only => [:index, :new, :create, :show]
  resource :user_item_status, :only => [:update]
  
  resources :items, :only => [:index, :create, :show]
  resources :map, :only => [:index]
end
