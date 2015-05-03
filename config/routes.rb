Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'

  get 'pages/register', as: :register

  get 'pages/add_trips', as: :offer_a_ride
  post 'pages/submit_trip', as: :submit_trip
  get 'pages/create_driver_profile', as: :create_driver_profile
  post 'pages/new_driver', as: :new_driver

  get 'pages/search_trips', as: :find_a_ride
  post 'pages/rider_profile', as: :rider_profile
  get 'pages/driver_contact', as: :driver_contact

  get 'pages/thanks', as: :thanks

  get 'pages/pay'

  get '/auth/:provider/callback', to: 'sessions#create'
  get "/signout" => "sessions#destroy", as: :signout

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
