Demo::Application.routes.draw do
  resources :people
  resources :events
#get    '/events'          => "events#index",   :as => "events"
#post   '/events'          => "events#create",  :as => "events"
#get    '/events/:id'      => "events#show",    :as => "event"
#put    '/events/:id'      => "events#update",  :as => "event"
#delete '/events/:id'      => "events#destroy", :as => "event"
#get    '/events/new'      => "events#new",     :as => "new_event"
#get    '/events/:id/edit' => "events#edit",    :as => "edit_event"

  get "welcome/say_hello" => "welcome#say"		
  get "welcome" => "welcome#index"
  root :to => "welcome#index"
  #get "events" => "events#index"
  #get "events/show" => "events#show"
  #get "events/edit" => "events#edit"
  #get "events/destroy" => "event#destroy"
  #get "events/new" => "event#create"

  #get ':controller(/:action(/:id(.:format)))'
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
