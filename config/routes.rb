Rails.application.routes.draw do
  resources :hps

  resources :fan_comments

  resources :reviews

  resources :authors

  resources :users

  resources :books

  resources :tests do
    post :ph1, on: :collection
  end
  resources :record do 
      get :upload, on: :collection
      post :upload_process, on: :collection
      get :belongs, on: :collection
      get :cookie, on: :collection
      post :cookie_rec, on: :collection
      get :find, on: :collection
      get :session_show, on: :collection
      post :session_rec, on: :collection
  end

  resources :ajax do
      get :upanel, on: :collection
      get :search, on: :collection
      post :result, on: :collection
      get :search_result, on: :collection
  end

  resources :ajax2 do
      get :upnel, on: :collection
      post :result, on: :collection
      get :search, on: :collection
      get :search, on: :collection

  end

  
  resources :hp do
      get :prof, on: :collection
      get :test, on: :collection
      get :a , on: :collection
      get :prof2, on: :collection
  end

  match '/help', to: 'static_pages#help', via: 'get'


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
   #match ':controller(/:action(/:id))', via: [:get, :post, :patch]
end
