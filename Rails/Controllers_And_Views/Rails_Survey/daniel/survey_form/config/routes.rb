Rails.application.routes.draw do
  root "survey#index"

  get 'survey/index'

  post 'submit_survey' => "survey#send_data"
  
  get 'survey/result'

end
