Rails.application.routes.draw do
  get '/register' => 'users#register'
  post '/create' => 'users#create'
  get '/login' => 'users#login'
  get '/home'=> 'users#home'
  post '/login_user' => 'users#login_user'
  post '/home/add_item'=> 'todo#create_todo'
  delete '/lists/:id' => 'todo#delete'
  get '/logout' => 'todo#logout'
end
