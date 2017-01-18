Rails.application.routes.draw do
  get '/' => 'surveys#index'

  post '/create' => 'surveys#create'

  get '/show' => 'surveys#show'

end
