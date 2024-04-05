Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "home#index"

  # send authenticated admin users to the admin home page instead of the regular home page.
  authenticated :admin_user do
    root to: 'admin#index', as: :admin_root
  end

   # I think this links http://127.0.0.1:3000/admin to the admin home page.
   get 'admin' => 'admin#index'
   get 'admins/sign_up' => 'home#index'
end
