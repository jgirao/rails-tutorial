Publicationdb::Application.routes.draw do
  resource :author
  root :to => 'author#index'
end
