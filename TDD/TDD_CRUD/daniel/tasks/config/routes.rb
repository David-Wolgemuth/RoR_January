Rails.application.routes.draw do

  root 'tasks#index'

  resources :tasks


#
# tasks       get "/tasks" => "tasks#index"
#             get "/tasks/:id" => "tasks#show"
# new_task    get "/tasks/new" => "tasks#new"
# edit_task   task "/tasks" => "tasks#create"  # usually a submitted form
# task        get "/tasks/:id/edit" => "tasks#edit"
#             put "/tasks/:id" => "tasks#update" # usually a submitted form
#             delete "/tasks/:id" => "tasks#destroy"
end
