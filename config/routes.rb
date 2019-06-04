Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do  
    namespace :api do   
      resources :users
      resources :blood_sugar_record
    end 
  end
end
