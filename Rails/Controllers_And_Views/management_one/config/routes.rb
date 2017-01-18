Rails.application.routes.draw do
  get 'index'=> 'users#index'
  post 'create'=> 'users#create'
  get 'new'=> 'users#new'
  get ':id/show'=> 'users#show'
  get ':id/edit'=> 'users#edit'
  patch ':id/update'=> 'users#update'
  delete':id'=> 'users#destroy'
end
