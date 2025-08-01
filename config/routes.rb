Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rub yonrails.org/routing.html

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get 'static/index'
  root 'static#index'

  get '/about'       => 'static#about'
  get '/portfolio'     => 'static#portfolio'
  get '/services'       => 'static#services'
  get '/privacy-policy'     => 'static#privacy-policy'
  get '/terms'     => 'static#terms'
  get '/faqs' => 'static#faqs'
  # get '/resources' => 'static#resources'
  get '/links' => 'static#links'
  # get '/schedule-consultation' => 'static#consultation'

  # Portfolio Pages
  get '/portfolio/firmatek' => 'static#portfolio_firmatek'
  get '/portfolio/outwellness-atx' => 'static#portfolio_outwellnessatx'
  get '/portfolio/nonprofit-website' => 'static#portfolio_nonprofit_website', as: 'portfolio_foundation_website'
  get '/portfolio/community-impact-website' => 'static#portfolio_community_impact_website'
  get '/portfolio/youth-career-resource-website' => 'static#portfolio_youthcareer', as: 'portfolio_youthcareer'
  get '/portfolio/capitalize' => 'static#portfolio_capitalize'
  get '/portfolio/mfour' => 'static#portfolio_mfour'
  get '/portfolio/compost-products-website' => 'static#portfolio_greenerworld', as: 'portfolio_greenerworld'
  get '/portfolio/electrical-industry-website' => 'static#portfolio_electricalalliance', as: 'portfolio_electricalalliance'
  get '/portfolio/genie-creates' => 'static#portfolio_genie', as: 'portfolio_genie'
  get '/portfolio/north-bloom' => 'static#portfolio_northbloom', as: 'portfolio_northbloom'
  get '/portfolio/betty-boujee' => 'static#portfolio_bettyboujee', as: 'portfolio_bettyboujee'
  get '/portfolio/agency-website' => 'static#portfolio_agency', as: 'portfolio_agency'
  get '/portfolio/community-retail-showcase' => 'static#portfolio_community', as: 'portfolio_community'
  get '/portfolio/igco' => 'static#portfolio_igco'
  get '/portfolio/expertly-sanitized' => 'static#portfolio_expertlysanitized', as: 'portfolio_expertly'
  get '/portfolio/universal-control-systems' => 'static#portfolio_ucs', as: 'portfolio_ucs'
  get '/portfolio/marysol-wellness' => 'static#portfolio_marysol', as: 'portfolio_marysol'
  get '/portfolio/zack-pride' => 'static#portfolio_zackpride', as: 'portfolio_zackpride'
  get '/portfolio/leeward-team' => 'static#portfolio_leewardteam', as: 'portfolio_leewardteam'
  get '/portfolio/the-picnic-hour' => 'static#portfolio_picnichour', as: 'portfolio_picnichour'
  get '/portfolio/not-your-average-picnic' => 'static#portfolio_nyap', as: 'portfolio_nyap'
  get '/portfolio/picnics-in-the-city' => 'static#portfolio_picnics', as: 'portfolio_picnics'
  get '/portfolio/reliant-home-security' => 'static#portfolio_reliantsecurity', as: 'portfolio_reliantsecurity'
  get '/portfolio/reliant-mass-campaign' => 'static#portfolio_reliantmass', as: 'portfolio_reliantmass'
  get '/portfolio/joshespin' => 'static#portfolio_joshespin'
  get '/portfolio/jumpix' => 'static#portfolio_jumpix'
  get '/portfolio/ibuildamerica' => 'static#portfolio_iba', as: 'portfolio_iba'
  get '/portfolio/cia' => 'static#portfolio_cia'
  get '/portfolio/turner-mining-group' => 'static#portfolio_tmg', as: 'portfolio_tmg'
  get '/portfolio/captivecolour' => 'static#portfolio_captivecolour'
  get '/portfolio/snapple-video' => 'static#portfolio_snapple', as: 'portfolio_snapple'
  get '/portfolio/jarrod-lee' => 'static#portfolio_jarrodlee', as: 'portfolio_jarrodlee'

  # Old Pages (Redirects Created in Controller)
  # get '/portfolio/crossroads-decision' => 'static#portfolio_crossroads_decision'
  get '/portfolio/apg' => 'static#portfolio_apg'
  get '/portfolio/hcss' => 'static#portfolio_hcss'
  get '/portfolio/artofgreenwood' => 'static#portfolio_greenwood'
  get '/portfolio/neydi-photography' => 'static#portfolio_neydiphotography', as: 'portfolio_neydi'
  get '/portfolio/manifesting-money-studio' => 'static#portfolio_mms', as: 'portfolio_mms'
  get '/portfolio/cameron-lee' => 'static#portfolio_csl', as: 'portfolio_csl'

  # Contact Pages
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
