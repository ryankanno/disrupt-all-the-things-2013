RrrServer::Application.routes.draw do
  resources :items, :only => [:index, :create, :show]
end
