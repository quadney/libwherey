Rails.application.routes.draw do
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      # Our resources will go here.
      resources :universities do 
        resources :regions, only: [:index, :new, :create]
      end
      resources :regions, only: [:show, :edit, :update, :destroy] do
        member do
          get 'user_entered_region' #this is probably REALLY BAD PRACTICE using get...
          get 'user_exited_region'
        end
      end
    end
  end

end
