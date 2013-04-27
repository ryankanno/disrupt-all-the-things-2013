RrrServer::Application.routes.draw do
  resources :items, :only => [:index, :new, :create, :show]
end
