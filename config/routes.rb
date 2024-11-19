Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :weeks do
    resources :days do
      resources :schedules do
        resources :tacticians, only: [:index, :show, :new, :create]
      end
    end
  end

  resources :badges do
    resources :tacticians, only: [:index, :show, :new]
  end


  resources :tacticians, only: [:index, :show, :new, :create]

  root "weeks#index"

  # resources :tacticians do
  #    resources :days, only: [:index, :show]
  # end
  #
  # resources :days do
  #   resources :tacticians, only: [:index, :show]
  # end

end
