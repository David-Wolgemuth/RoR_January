Rails.application.routes.draw do

  root "gold#index"

  get 'gold/index'

  post 'make' => 'gold#create'

  get 'reset' => 'gold#reset'
end
