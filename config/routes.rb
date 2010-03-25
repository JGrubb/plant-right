ActionController::Routing::Routes.draw do |map|
  
	# QUIZ ROUTES
  map.quiz  "quiz", :controller => "quiz", :action => "index"
  
  # SURVEY ROUTES
  map.survey_intro "survey/introduction", :controller => "survey", :action => "intro"
  
  # AUTHENTICATION ROUTES
  map.user_redirect "user_redirect", :controller => "user_sessions", :action => "redirect"
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.register "register", :controller => "users", :action => "new"
  map.resource :account, :controller => "users"
  map.resources :users
  map.resources :password_resets
  map.resource :user_session
  
  # ROOT ROUTE
  map.root :controller => "survey", :action => "intro"
  
  # DEFAULT ROUTES
  map.connect  ':controller/:action/:id'
  map.connect  ':controller/:action/:id.:format'  
end
