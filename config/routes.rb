Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing_page"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "activities/info_activity", to: "activities#info_activity"

  # Defines the root path route ("/")
  # root "posts#index"

  get "pages/home", to: "pages#home"

  resources :bookings, only: [:index, :show, :edit, :update, :destroy] do
    resources :participants
    member do
      post :add_participants
    end
  end

  resources :activities do
    resources :bookings, only: [:new, :create]
    collection do
      get :category_list
    end
  end

  # resources :activities do
  #   member do
  #     get :potential_participants
  #   end
  #   member do
  #     get :potential_part_selected
  #   end
  # end
end
