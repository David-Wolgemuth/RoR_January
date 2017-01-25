Rails.application.routes.draw do
  get "/sessions/new" => "session#index"
  post "/users/login" => "session#login"


end
