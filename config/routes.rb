Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  # post 'create_user', to: 'authentication#create'
  namespace :api do  
    namespace :v1 do   
      resources :blood_sugar_records
      resources :diabetes_metrics 
    end 
  end
end
