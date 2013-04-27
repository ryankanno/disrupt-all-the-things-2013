RrrServer::Application.routes.draw do
  resources :items, :only => [:create, :index]
end
