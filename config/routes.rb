Rails.application.routes.draw do
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      # Our resources will go here.
      # /universities/{:id}/regions
      resources :universities do 
        resources :regions, only: [:index, :new, :create]
      end
      # /regions/{:id}
      resources :regions, only: [:show, :edit, :update, :destroy]

      # /zones/{:id}
      resources :zones, only: [:show, :edit, :update, :destroy] do
        # /zones/{:id}/user_entered_zone
        member do
          get 'user_entered_zone'
          get 'user_exited_zone'
        end
      end
    end
  end

end
