Rails.application.routes.draw do
get '/hello' => 'name#index'
get '/say/hello/joe'=> 'name#create'
get '/say/hello/mike'=> 'name#new'
root 'name#show'
get '/times' => 'name#count'
get '/times/destroy'=>'name#destroy'
end
