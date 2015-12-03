Rails.application.routes.draw do
  get 'projects/pallette'

  get 'static_pages/home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  root 'static_pages#home'

  # Example of regular route:
  get 'resume' => 'static_pages#resume'
  get 'projects' => 'static_pages#projects'
  get 'home' => 'static_pages#home'
  get 'about' => 'static_pages#about'

  get 'projects/pallette' => 'projects#pallette'
  get 'projects/morse_code_display' => 'projects#morse_code_display'
  get 'projects/ios_dev_tour' => 'projects#ios_dev_tour', as: 'ios'
  get 'projects/terrorist_attacks_model' => 'projects#terrorist_attacks_model'
  get 'projects/online_communities' => 'projects#online_communities'
  get 'projects/parallel_api' => 'projects#parallel_api'
  get 'projects/design_thinking' => 'projects#design_thinking'


  get '*path' => redirect('/')   unless Rails.env.development?
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
