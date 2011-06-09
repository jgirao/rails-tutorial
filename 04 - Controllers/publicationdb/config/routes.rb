Publicationdb::Application.routes.draw do
  resources :authors do
    post 'publish', :on => :member
  end
  
  root :to => 'authors#index'
end
