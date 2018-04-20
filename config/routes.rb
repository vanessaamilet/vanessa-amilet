Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get 'static/index'
  root 'static#index'

  get '/about'       => 'static#about'
  get '/portfolio'     => 'static#portfolio'
  get '/portfolio/ecmg' => 'static#portfolio_ecmg'
  get '/portfolio/hcss' => 'static#portfolio_hcss'
  get '/portfolio/laura-conley' => 'static#portfolio_lsc'
  get '/portfolio/leeward-team' => 'static#portfolio_leewardteam'
  get '/portfolio/jumpix' => 'static#portfolio_jumpix'
  get '/portfolio/iba-ohio' => 'static#portfolio_ibo'
  get '/portfolio/tch-video' => 'static#portfolio_tch'
  get '/portfolio/hcss-careers' => 'static#portfolio_hcss_careers'
  get '/portfolio/832video' => 'static#portfolio_832video'
  get '/portfolio/captivecolour' => 'static#portfolio_captivecolour'
  get '/portfolio/artofgreenwood' => 'static#portfolio_greenwood'
  get '/portfolio/snapple-video' => 'static#portfolio_snapple'
  get '/portfolio/hcss-ugm-video' => 'static#portfolio_ugm_video'
  get '/portfolio/crossroads-decision' => 'static#portfolio_crossroads_decision'
  get '/portfolio/village-clothier' => 'static#portfolio_village_clothier'
  get '/privacy-policy'     => 'static#privacy-policy'
  get '/faqs' => 'static#faqs'

  resources :contacts, only: :create
  match '/contact', to: 'contacts#new', via: 'get'
  #resources "contacts", only: [:create]



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
