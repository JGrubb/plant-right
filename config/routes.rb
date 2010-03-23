ActionController::Routing::Routes.draw do |map|
  map.connect  ':controller/:action/:id'
  map.connect  ':controller/:action/:id.:format'
  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.root :controller => "main", :action => "intro"
end
