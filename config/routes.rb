Rails.application.routes.draw do
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      # Our resources will go here.
      resources :universities do 
        resources :regions, only: [:index, :new, :create]
      end
      resources :regions, only: [:show, :edit, :update, :destroy] do
        resources :zones, only: [:index, :new, :create]
        member do
          get 'user_entered_region' #this is probably REALLY BAD PRACTICE using get...
          get 'user_exited_region'
        end
      end
      resources :zones, only: [:show, :edit, :update, :destroy] do
        member do
          get 'user_entered_zone'
          get 'user_exited_zone'
        end
      end
    end
  end

end
