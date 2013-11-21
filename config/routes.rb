Diamond::Application.routes.draw do
  root "rfps#new"

  # Routes for the Match resource:
  # CREATE
  get '/matches/new', controller: 'matches', action: 'new', as: 'new_match'
  post '/matches', controller: 'matches', action: 'create', as: 'matches'

  # READ
  get '/matches', controller: 'matches', action: 'index'
  get '/matches/:id', controller: 'matches', action: 'show', as: 'match'

  # UPDATE
  get '/matches/:id/edit', controller: 'matches', action: 'edit', as: 'edit_match'
  patch '/matches/:id', controller: 'matches', action: 'update'

  # DELETE
  delete '/matches/:id', controller: 'matches', action: 'destroy'
  #------------------------------

  # Routes for the Merchant resource:
  # CREATE
  get '/merchants/new', controller: 'merchants', action: 'new', as: 'new_merchant'
  post '/merchants', controller: 'merchants', action: 'create', as: 'merchants'

  # READ
  get '/merchants', controller: 'merchants', action: 'index'
  get '/merchants/:id', controller: 'merchants', action: 'show', as: 'merchant'

  # UPDATE
  get '/merchants/:id/edit', controller: 'merchants', action: 'edit', as: 'edit_merchant'
  patch '/merchants/:id', controller: 'merchants', action: 'update'

  # DELETE
  delete '/merchants/:id', controller: 'merchants', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Offer resource:
  # CREATE
  get '/offers/new', controller: 'offers', action: 'new', as: 'new_offer'
  post '/offers', controller: 'offers', action: 'create', as: 'offers'

  # READ
  get '/offers', controller: 'offers', action: 'index'
  get '/offers/:id', controller: 'offers', action: 'show', as: 'offer'

  # UPDATE
  get '/offers/:id/edit', controller: 'offers', action: 'edit', as: 'edit_offer'
  patch '/offers/:id', controller: 'offers', action: 'update'

  # DELETE
  delete '/offers/:id', controller: 'offers', action: 'destroy'
  #------------------------------

  # Routes for the Rfp resource:
  # CREATE
  get '/rfps/new', controller: 'rfps', action: 'new', as: 'new_rfp'
  post '/rfps', controller: 'rfps', action: 'create', as: 'rfps'

  # READ
  get '/rfps', controller: 'rfps', action: 'index'
  get '/rfps/:id', controller: 'rfps', action: 'show', as: 'rfp'

  # UPDATE
  get '/rfps/:id/edit', controller: 'rfps', action: 'edit', as: 'edit_rfp'
  patch '/rfps/:id', controller: 'rfps', action: 'update'

  # DELETE
  delete '/rfps/:id', controller: 'rfps', action: 'destroy'
  #------------------------------

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
